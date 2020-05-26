#pragma once
#include <Arduino.h>
#include <ArduinoJson.h>

void wifiSleep();
void wifiWake();
void setupWiFi();
void getTime(DynamicJsonDocument& doc, time_t& startTime, String& timezone);
