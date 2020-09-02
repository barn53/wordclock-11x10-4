#pragma once

#include <NeoPixelAnimator.h>
#include <NeoPixelBus.h>
#include <bitset>
#include <string>
#include <vector>

#define WIDTH 11
#define HEIGHT 10
#define MIN_INDICATORS 4
#define PIXELS (WIDTH * HEIGHT + MIN_INDICATORS)

#define POWER_MEASURE_INTERVAL_MINUTES 1

using Feature = NeoGrbFeature;
//using Feature = NeoRgbFeature;

class Settings;

class Display {
public:
    Display(Settings& m_settings);

    void begin();

    void loop();
    void toPixels(const std::bitset<PIXELS>& indexes, uint8_t pixelBrightness);
    void toPixelsRandomColor(const std::bitset<PIXELS>& indexes, uint8_t pixelBrightness, bool colorWords);
    void toPixelsSingleColor(const std::bitset<PIXELS>& indexes, const RgbColor& color);
    bool isCleared() const { return m_cleared; }
    void clear();

    void toSerial(const std::bitset<PIXELS>& indexes, const std::string& letters) const;
    uint32_t pixelCurrent() const;
    double kWh() const;
    uint32_t clearedCounter() const { return m_cleared_counter; }

    // physical index is the actual index of the neo pixel in hardware
    // logical index is the index of the letter in the m_letter string
    static size_t physicalToIndex(size_t physical);
    static size_t indexToPhysical(size_t index);

    static RgbColor randomColor();

private:
    void blinkyBlinkyAnimation(const AnimationParam& param);

    NeoPixelBus<Feature, Neo800KbpsMethod> m_pixels;
    NeoPixelAnimator m_animations;

    bool m_cleared { false };
    uint32_t m_cleared_counter { 0 };

    uint32_t m_sum_mw { 0 };
    unsigned long m_last_kwh_update;
    unsigned long m_start_time;

    Settings& m_settings;
};
