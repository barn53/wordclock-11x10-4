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

    time_t getStartTime() const { return m_start_time; }
    time_t& getMutableStartTime() { return m_start_time; }

    const bitset<PIXELS>& bitIndexesForText(const string& text);
    const std::vector<bool>& indexesForText(const std::string& text);

    const std::vector<bool>& indexesForCurrentTime();
    bool changed() const;
    const std::string& getLastText() const { return m_last_text; }
    uint8_t getLastMin() const { return m_last_min_indicator; }

    const std::string& getLetters() { return Language::getLetters(); }
    void print();

private:
    void clear();
    void indexesForText(const std::string& text, uint8_t minIndicator);
    void createText(std::string& text);
    void indexesForWord(const std::string& word, size_t& displayIndex);

    time_t m_start_time;
    std::vector<bool> m_indexes;
    std::bitset<PIXELS> m_bit_indexes;
    Language m_language;
    static uint8_t m_pixel_count;
    std::string m_last_text;
    uint8_t m_last_min_indicator;
    mutable bool m_changed { false };

    Settings& m_settings;
};
