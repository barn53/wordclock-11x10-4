#include "text.h"
#include "display.h"

using namespace std;

uint8_t Text::m_pixel_count = PIXELS;

Text::Text()
{
}

void Text::clear()
{
    m_indexes.resize(PIXELS);
    fill(m_indexes.begin(), m_indexes.end(), false);
}

void Text::createText(string& text, uint8_t& minIndicator)
{
    m_language.createText(text, minIndicator, m_start_time);
}

void Text::indexesForWord(const string& word, size_t& displayIndex)
{
    size_t wordBeginIndex(Language::getLetters().find(word, displayIndex));
    // Serial.printf("%s ", word.c_str());
    // Serial.printf("[%d]->[%d] - \n", wordBeginIndex, indexToPhysical(wordBeginIndex));
    if (wordBeginIndex != string::npos) {
        uint8_t wordSize(word.size());
        for (uint8_t ii = 0; ii < wordSize; ++ii) {
            m_indexes[Display::indexToPhysical(wordBeginIndex + ii)] = true;
        }
        displayIndex = wordBeginIndex + wordSize;
    } else {
        displayIndex = Language::getLetters().size();
    }
}

const vector<bool>& Text::indexesForText(const string& text)
{
    m_last_text = text;
    m_changed = true;
    indexesForText(text, 0);
    return m_indexes;
}

void Text::indexesForText(const string& text, uint8_t minIndicator)
{
    size_t wordBegin(0);
    size_t wordEnd(text.find(' '));
    string word;
    size_t displayIndex(0);

    clear();
    while (wordBegin <= text.size()) {
        word = text.substr(wordBegin, wordEnd - wordBegin);
        indexesForWord(word, displayIndex);
        wordBegin = wordEnd + 1;
        wordEnd = text.find(' ', wordBegin);
        if (wordEnd == string::npos) {
            wordEnd = text.size();
        }
    }
    for (uint8_t ii = 0; ii < minIndicator; ++ii) {
        m_indexes[ii] = true;
    }
}

const vector<bool>& Text::indexesForCurrentTime()
{
    string text;
    uint8_t minIndicator;
    createText(text, minIndicator);

    m_changed = false;
    if (text != m_last_text || minIndicator != m_last_min_indicator) {
        m_last_text = text;
        m_last_min_indicator = minIndicator;
        m_changed = true;
    }

    indexesForText(text, minIndicator);
    return m_indexes;
}

void Text::print()
{
    string text;
    uint8_t minIndicator;
    createText(text, minIndicator);
    Serial.printf("%s + %u Minuten\n", text.c_str(), minIndicator);
}
