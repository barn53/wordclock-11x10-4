#include "brightness.h"
#include <algorithm>

using namespace std;

void Brightness::loop()
{
    if (millis() - m_last_measure > MEASURE_INTERVAL_MILLIS) {
        m_measures.emplace_back(analogRead(A0));
        while (m_measures.size() > MEASURES_MAX_AMOUNT) {
            m_measures.pop_front();
        }
        m_last_measure = millis();
    }
}

uint16_t Brightness::getMedMeasure() const
{
    uint16_t med(0);
    if (m_measures.size() >= MEASURES_MAX_AMOUNT) {
        uint16_t sum(0);
        sum = accumulate(m_measures.begin(), m_measures.end(), sum);
        med = sum / m_measures.size();
    }
    return med;
}

uint8_t Brightness::pixelBrightness() const
{
    auto med(getMedMeasure());
    // The darker the ambient, the higher the number,
    //  the darker the ouput.
    if (med < 350) {
        return numeric_limits<uint8_t>::max();
    } else if (med < 450) {
        return 150;
    } else if (med < 700) {
        return 100;
    } else {
        return 50;
    }
}

void Brightness::print() const
{
    Serial.printf("Brightness measures:\n");
    for (const auto& ref : m_measures) {
        Serial.printf("%d \n", ref);
    }
    Serial.printf("pixel brightness: %u\n", pixelBrightness());
}
