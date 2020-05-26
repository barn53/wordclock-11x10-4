#pragma once
#include "deutsch.h"
#include <Arduino.h>

class Text {
public:
    Text();

    void loop();

    time_t getStartTime() const { return m_start_time; }
    time_t& getMutableStartTime() { return m_start_time; }
    const std::vector<bool>& indexesForText(const std::string& text);
    const std::vector<bool>& indexesForCurrentTime();
    bool changed() const { return m_changed; }
    const std::string& getLastText() const { return m_last_text; }
    uint8_t getLastMin() const { return m_last_min_indicator; }

    const std::string& getLetters() { return Language::getLetters(); }
    void print();

private:
    void clear();
    void indexesForText(const std::string& text, uint8_t minIndicator);
    void createText(std::string& text, uint8_t& minIndicator);
    void indexesForWord(const std::string& word, size_t& displayIndex);

    time_t m_start_time;
    std::vector<bool> m_indexes;
    Language m_language;
    static uint8_t m_pixel_count;
    std::string m_last_text;
    uint8_t m_last_min_indicator;
    bool m_changed { false };
};
