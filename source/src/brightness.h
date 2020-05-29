#pragma once
#include <Arduino.h>
#include <deque>

#define MEASURE_INTERVAL_MILLIS 1000
#define MEASURES_MAX_AMOUNT 10

class Settings;

class Brightness {
public:
    Brightness(Settings& settings);

    void loop();
    void print() const;
    bool changed() const;

    uint16_t pixelBrightness() const;
    uint16_t getMedMeasure() const;

private:
    void sweep();
    std::deque<int> m_measures;
    unsigned long m_last_measure_time { 0 };
    mutable int m_last_pixel_brightness { 0 };
    mutable bool m_changed { 0 };

    Settings& m_settings;
};
