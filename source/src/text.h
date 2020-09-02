#pragma once
#include "deutsch.h"
#include "display.h"
#include <Arduino.h>
#include <bitset>

class Settings;

class Text {
public:
    Text(Settings& m_settings);

    void loop();

    const std::bitset<PIXELS>& indexesForText(const std::string& text);
    const std::bitset<PIXELS>& indexesForCurrentTime();
    bool changed() const;
    const std::string& getLastText() const { return m_last_text; }
    uint8_t getLastMin() const { return m_last_min_indicator; }

    const std::string& getLetters() { return Language::getLetters(); }
    void print();

private:
    void clear();
    void indexesForText(const std::string& text, uint8_t minIndicator);
    void indexesForWord(const std::string& word, size_t& displayIndex);

    std::bitset<PIXELS> m_indexes;
    Language m_language;
    static uint8_t m_pixel_count;
    std::string m_last_text;
    uint8_t m_last_min_indicator;
    mutable bool m_changed { false };

    Settings& m_settings;
};
