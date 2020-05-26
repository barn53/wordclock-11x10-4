#pragma once

#include <NeoPixelAnimator.h>
#include <NeoPixelBus.h>
#include <string>
#include <vector>

#define WIDTH 11
#define HEIGHT 10
#define MIN_INDICATORS 4
#define PIXELS (WIDTH * HEIGHT + MIN_INDICATORS)

using Feature = NeoGrbFeature;
//using Feature = NeoRgbFeature;

class Display {
public:
    Display();

    void begin();
    void toPixels(const std::vector<bool>& indexes, uint8_t pixelBrightness);
    void toPixels(const std::vector<bool>& indexes, const RgbColor& color);
    bool isCleared() const { return m_cleared; }
    void clear();

    void toSerial(const std::vector<bool>& indexes, const std::string& letters) const;
    uint32_t pixelCurrent() const;

    // physical index is the actual index of the neo pixel in hardware
    // logical index is the index of the letter in the m_letter string
    static size_t physicalToIndex(size_t physical);
    static size_t indexToPhysical(size_t index);

    static RgbColor getRandomColor();

private:
    void blinkyBlinkyAnimation(const AnimationParam& param);

    NeoPixelBus<Feature, Neo800KbpsMethod> m_pixels;
    NeoPixelAnimator m_animations;

    bool m_cleared { false };
};
