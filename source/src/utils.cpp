#include "utils.h"

#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>
#include <sstream>

using namespace std;

// https://arduinojson.org/v6/assistant/
DynamicJsonDocument timeDoc(JSON_OBJECT_SIZE(15) + 350);

void getHourMinuteForCurrentTimeFromTime(time_t time, int& hour, int& minute)
{
    time_t t(time + (millis() / 1000));
    tm* currentTime(localtime(&t));
    hour = currentTime->tm_hour;
    minute = currentTime->tm_min;
}

bool getJsonFromUrl(const char* host, const char* uri, uint16_t port, DynamicJsonDocument& doc)
{
    bool ret(false);
    WiFiClient client;
    HTTPClient http;

    if (http.begin(client, host, port, uri, false)) {
        Serial.print("[HTTP] begin...\n");
        int httpCode = http.GET();
        if (httpCode > 0) {
            Serial.printf("[HTTP] GET... code: %d\n", httpCode);
            if (httpCode == HTTP_CODE_OK) {
                deserializeJson(doc, client);
                ret = true;
            }
        } else {
            Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
        }
        http.end();
    }

    if (!ret) {
        Serial.printf("[HTTP} Unable to connect\n");
    }

    return ret;
}

void syncTime(time_t& time, String& timezone, bool& dst)
{
    if (getJsonFromUrl("worldtimeapi.org", "/api/ip", 80, timeDoc)) {
        auto unixtime = timeDoc["unixtime"].as<time_t>();
        auto raw_offset = timeDoc["raw_offset"].as<time_t>();
        auto dst_offset = timeDoc["dst_offset"].as<time_t>();
        timezone = timeDoc["timezone"].as<String>();
        dst = timeDoc["dst"].as<bool>();
        time = unixtime + raw_offset + dst_offset - (millis() / 1000);
    }
}

RgbColor fromString(string& rgb)
{
    uint8_t r, g, b;

    b = strtoul(rgb.c_str() + 4, nullptr, 16);
    rgb[4] = 0;
    g = strtoul(rgb.c_str() + 2, nullptr, 16);
    rgb[2] = 0;
    r = strtoul(rgb.c_str(), nullptr, 16);

    return RgbColor(r, g, b);
}
