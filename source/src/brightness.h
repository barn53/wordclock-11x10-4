#pragma once
#include <Arduino.h>
#include <deque>

#define MEASURE_INTERVAL_MILLIS 1000
#define MEASURES_MAX_AMOUNT 10

class Brightness {
public:
    Brightness() = default;

    void loop();
    void print() const;

    uint8_t pixelBrightness() const;
    uint16_t getMedMeasure() const;

private:
    void sweep();
    std::deque<int> m_measures;
    unsigned long m_last_measure { 0 };
};
