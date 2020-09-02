#include "brightness.h"
#include "display.h"
#include "handler.h"
#include "largedigits.h"
#include "motion.h"
#include "settings.h"
#include "tetris.h"
#include "text.h"
#include "utils.h"
#include "wifi.h"

#include <Arduino.h>
#include <ArduinoJson.h>
#include <ESP8266WebServer.h>
#include <FS.h>
// #include <LittleFS.h>

using namespace std;

#define OUT_AND_GATE D1

ESP8266WebServer server(80); // Create a webserver object that listens for HTTP request on port 80

time_t startTime;
String timezone;
bool dst;

LargeDigits largeDigits;
Settings settings;
Motion motion;
Brightness brightness(settings);
Text text(settings);
Display display(settings);
Handler handler(brightness, motion, text, display, settings);

void printTime()
{
    time_t t(startTime + (millis() / 1000));
    tm* currentTime(localtime(&t));
    Serial.printf("%u.%u.%u %02u:%02u:%02u\n",
        currentTime->tm_mday, currentTime->tm_mon + 1, currentTime->tm_year + 1900,
        currentTime->tm_hour, currentTime->tm_min, currentTime->tm_sec);
}

void setup()
{
    Serial.begin(115200);
    pinMode(OUT_AND_GATE, OUTPUT);
    digitalWrite(OUT_AND_GATE, 1);
    pinMode(MOVE_IN, INPUT);

    const auto& indexes(text.indexesForText("WLAN"));
    display.begin();
    display.toPixelsSingleColor(indexes, RgbColor(0xff, 0x30, 0xcc));

    setupWiFi();
    syncTime(startTime, timezone, dst);

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
        display.toPixels(largeDigits.get(ii), RgbColor(0x00, 0xee, 0xff));
        delay(300);
    }
    return;
#endif

    server.handleClient();

    motion.loop();
    brightness.loop();
    display.loop();

    if (false /* tetris */) {
        // :-(
    } else {
        if (motion.isActive()) {
            const auto& indexes(text.indexesForCurrentTime());
            auto bness(brightness.pixelBrightness());
            if (text.changed()
                || brightness.changed()
                || settings.changed()
                || display.isCleared()) {
                // display.toSerial(indexes, text.getLetters());
                display.toPixels(indexes, bness);
                Serial.print(">");
            }
        } else {
            display.clear();
        }
    }
}
