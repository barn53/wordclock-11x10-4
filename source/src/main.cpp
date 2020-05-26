#include "brightness.h"
#include "display.h"
#include "handler.h"
#include "large.h"
#include "motion.h"
#include "text.h"
#include "wifi.h"

#include <Arduino.h>
#include <ArduinoJson.h>
#include <ESP8266WebServer.h>
#include <FS.h>
// #include <LittleFS.h>

using namespace std;

#define OUT_AND_GATE D1

ESP8266WebServer server(80); // Create a webserver object that listens for HTTP request on port 80

// https://arduinojson.org/v6/assistant/
DynamicJsonDocument timeDoc(JSON_OBJECT_SIZE(15) + 350);
String timezone;

Brightness brightness;
Motion motion;
Text text;
Large large;
Display display;
Handler handler(brightness, motion, text, display);

void printTime()
{
    time_t t(text.getStartTime() + (millis() / 1000));
    tm* currentTime(localtime(&t));
    Serial.printf("%u.%u.%u %02u:%02u:%02u\n",
        currentTime->tm_mday, currentTime->tm_mon + 1, currentTime->tm_year + 1900,
        currentTime->tm_hour, currentTime->tm_min, currentTime->tm_sec);
}

uint32_t lastUpdate;
void setup()
{
    Serial.begin(115200);
    pinMode(OUT_AND_GATE, OUTPUT);
    digitalWrite(OUT_AND_GATE, 1);
    pinMode(MOVE_IN, INPUT);

    const auto& indexes(text.indexesForText("WLAN"));
    display.begin();
    display.toPixels(indexes, RgbColor(0xff, 0x30, 0xcc));

    setupWiFi();
    getTime(timeDoc, text.getMutableStartTime(), timezone);

    server.onNotFound([]() { // If the client requests any URI
        if (!handler.handleAction(server.uri())
            && !handler.handleFileRead(server.uri())) { // send it if it exists
            server.send(404, "text/plain", "404: Not Found"); // otherwise, respond with a 404 (Not Found) error
        }
    });
    server.begin(); // Actually start the server
    SPIFFS.begin(); // Start the SPI Flash Files System
    // LittleFS.begin(); // Start the SPI Flash Files System

    randomSeed(millis());
}

void loop()
{
#if 0
    for (auto ii = 0; ii < 101; ++ii) {
        display.toPixels(large.get(ii), RgbColor(0x00, 0xee, 0xff));
        delay(300);
    }
    return;
#endif

    server.handleClient();

    motion.loop();
    brightness.loop();

    if (motion.isActive()) {
        const auto& indexes(text.indexesForCurrentTime());
        if (text.changed() || display.isCleared()) {
            // display.toSerial(indexes, text.getLetters());
            display.toPixels(indexes, brightness.pixelBrightness());
            Serial.print(">");
        }
    } else {
        display.clear();
    }
}
