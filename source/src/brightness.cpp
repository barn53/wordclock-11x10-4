#include "brightness.h"
#include "settings.h"
#include <algorithm>

using namespace std;

Brightness::Brightness(Settings& settings)
    : m_settings(settings)
{
}

void Brightness::loop()
{
    if (millis() - m_last_measure_time > MEASURE_INTERVAL_MILLIS) {
        m_measures.emplace_back(analogRead(A0));
        while (m_measures.size() > MEASURES_MAX_AMOUNT) {
            m_measures.pop_front();
        }
        m_last_measure_time = millis();
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

uint16_t Brightness::pixelBrightness() const
{
    auto x(getMedMeasure());
    // The darker the ambient, the higher the number,
    //  the darker the ouput.

    double m(-1 / 3.);
    int16_t c(270);
    int16_t b(m * x + c);
    b = min<int16_t>(b, 255);
    b = max<int16_t>(b, 30);

    if (m_last_pixel_brightness != b) {
        m_changed = true;
        m_last_pixel_brightness = b;
    }
    return b;
}

bool Brightness::changed() const
{
    bool was(m_changed);
    m_changed = false;
    return was;
}

void Brightness::print() const
{
    Serial.printf("Brightness measures:\n");
    for (const auto& ref : m_measures) {
        Serial.printf("%d \n", ref);
    }
    Serial.printf("pixel brightness: %u\n", pixelBrightness());
}
