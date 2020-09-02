#pragma once
#include <Arduino.h>
#include <ArduinoJson.h>
#include <NeoPixelBus.h>

void getHourMinuteForCurrentTimeFromTime(time_t time, int& hour, int& minute);
void syncTime(time_t& time, String& timezone, bool& dst);

RgbColor fromString(std::string& rgb);
