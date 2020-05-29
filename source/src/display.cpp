#include "display.h"
#include "settings.h"
#include "utils.h"

using namespace std;

namespace {
void colorMinBrightness(RgbColor& color)
{
    if (color.R + color.G + color.B < 10) {
        color.R += 4;
        color.G += 4;
        color.B += 4;
    }
}
}

Display::Display(Settings& settings)
    : m_pixels(PIXELS)
    , m_animations(1)
    , m_settings(settings)
{
}

void Display::begin()
{
    m_start_time = millis();
    m_pixels.Begin();
    m_pixels.ClearTo(RgbColor(0x0, 0x0, 0x0));
    m_pixels.Show();
}

void Display::loop()
{
    if (millis() - m_last_kwh_update > (POWER_MEASURE_INTERVAL_MINUTES * 1000 * 60)) {
        // (pixel current in mA + 100mA for ESP) * 5V, 1min interval
        m_sum_mw += (((pixelCurrent() + 100) * 5) / (60 / POWER_MEASURE_INTERVAL_MINUTES));
        m_last_kwh_update = millis();
    }
}

double Display::kWh() const
{
    uint32_t measuredMinutes((millis() - m_start_time) / 1000 / 60);
    double measuredHours((measuredMinutes - (measuredMinutes % POWER_MEASURE_INTERVAL_MINUTES)) / static_cast<double>(60));
    return (m_sum_mw * measuredHours) / 1000000;
}

size_t Display::indexToPhysical(size_t index)
{
    uint8_t row(index / WIDTH);
    uint8_t physicalRow(HEIGHT - 1 - row);
    uint8_t col(index % WIDTH);
    if (physicalRow % 2 != 0) {
        col = WIDTH - 1 - col;
    }
    return (physicalRow * WIDTH + col) + MIN_INDICATORS;
}

size_t Display::physicalToIndex(size_t physical)
{
    physical -= MIN_INDICATORS;
    uint8_t physicalRow(physical / WIDTH);
    uint8_t row(HEIGHT - 1 - physicalRow);
    uint8_t col(physical % WIDTH);
    if (row % 2 == 0) {
        col = WIDTH - 1 - col;
    }
    return (row * WIDTH + col);
}

void Display::toPixels(const vector<bool>& indexes, uint8_t pixelBrightness)
{
    if (m_settings.useSingleColor()) {
        RgbColor color(fromString(m_settings.getSingleColor()));
        color = color.Dim(pixelBrightness);
        colorMinBrightness(color);
        toPixelsSingleColor(indexes, color);
    } else if (m_settings.useRandomColorLetter()) {
        toPixelsRandomColor(indexes, pixelBrightness, false);
    } else if (m_settings.useRandomColorWord()) {
        toPixelsRandomColor(indexes, pixelBrightness, true);
    }
}

void Display::toPixelsRandomColor(const vector<bool>& indexes, uint8_t pixelBrightness, bool words)
{
    m_cleared = false;
    m_animations.StopAll();

    RgbColor black(0, 0, 0);
    RgbColor color(0, 0, 0);
    int lastIndex(0);
    for (auto index = 0; index < (PIXELS); ++index) {
        if (indexes[index]) {
            if (!words // letter-wise
                || (words && index - lastIndex > 1)
                || (color.R == 0 && color.G == 0 && color.B == 0)) {
                color = randomColor();
                color = color.Dim(pixelBrightness);
                colorMinBrightness(color);
            }
            m_pixels.SetPixelColor(index, color);
            lastIndex = index;
        } else {
            m_pixels.SetPixelColor(index, black);
        }
    }
    m_pixels.Show();
}

void Display::toPixelsSingleColor(const vector<bool>& indexes, const RgbColor& color)
{
    m_cleared = false;
    m_animations.StopAll();

    RgbColor black(0, 0, 0);
    for (auto index = 0; index < (PIXELS); ++index) {
        if (indexes[index]) {
            m_pixels.SetPixelColor(index, color);
        } else {
            m_pixels.SetPixelColor(index, black);
        }
    }
    m_pixels.Show();
}

uint32_t Display::pixelCurrent() const
{
    RgbColor::SettingsObject settings(200, 200, 200);
    return const_cast<NeoPixelBus<Feature, Neo800KbpsMethod>&>(m_pixels).CalcTotalMilliAmpere(settings);
}

void Display::toSerial(const vector<bool>& indexes, const string& letters) const
{
    vector<bool> logicalIdxs(WIDTH * HEIGHT);

    for (auto ii = MIN_INDICATORS; ii < (PIXELS); ++ii) {
        logicalIdxs[physicalToIndex(ii)] = indexes[ii];
    }

    Serial.println("");
    Serial.println("----------------------");

    size_t s(0);
    for (size_t ii = 0; ii < (WIDTH * HEIGHT); ++ii) {
        if (s % WIDTH == 0) {
            Serial.println();
        }
        if (logicalIdxs[ii]) {
            string c(1, letters[s]);
            if (c == "o") {
                c = "Ö";
            } else if (c == "u") {
                c = "Ü";
            } else if (c == "a") {
                c = "Ä";
            }
            Serial.print(c.c_str());
            Serial.print(" ");
        } else {
            Serial.print("  ");
        }
        ++s;
    }
    Serial.println("");
    Serial.printf("       ");
    for (auto ii = 0; ii < MIN_INDICATORS; ++ii) {
        if (indexes[ii]) {
            Serial.printf("● ");
        }
    }
    Serial.println("");
}

void Display::clear()
{
    if (!m_cleared) {
        m_pixels.ClearTo(RgbColor(2, 0, 2));
        m_pixels.Show();
        m_cleared = true;
        ++m_cleared_counter;
    }
}

RgbColor Display::randomColor()
{
    return RgbColor(random(256), random(256), random(256));
}

#if 0
void Display::blinkyBlinkyAnimation(const AnimationParam& param)
{
    RgbColor c;
    if (m_counters[param.index] % 2 == 0) {
        c = RgbColor::LinearBlend(m_colors_1[param.index], m_colors_2[param.index], param.progress);
    } else {
        c = RgbColor::LinearBlend(m_colors_2[param.index], m_colors_1[param.index], param.progress);
    }

    m_pixels.SetPixelColor(param.index, m_state.correctColor(c));

    if (param.state == AnimationState_Completed) {
        if (m_counters[param.index] % 2 == 0) {
            m_colors_1[param.index] = randomColor();
        } else {
            m_colors_2[param.index] = randomColor();
        }
        ++m_counters[param.index];
        m_animations.RestartAnimation(param.index);
    }
}
#endif
