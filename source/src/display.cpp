#include "display.h"

using namespace std;

Display::Display()
    : m_pixels(PIXELS)
    , m_animations(1)
{
}

void Display::begin()
{
    m_pixels.Begin();
    m_pixels.ClearTo(RgbColor(0x0, 0x0, 0x0));
    m_pixels.Show();
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
    RgbColor color(0xff, 0xff, 0xff);
    color.Darken(0xff - pixelBrightness);
    toPixels(indexes, color);
}

void Display::toPixels(const vector<bool>& indexes, const RgbColor& color)
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

        Serial.print(" clear ");
    }
}

RgbColor Display::getRandomColor()
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
            m_colors_1[param.index] = getRandomColor();
        } else {
            m_colors_2[param.index] = getRandomColor();
        }
        ++m_counters[param.index];
        m_animations.RestartAnimation(param.index);
    }
}
#endif
