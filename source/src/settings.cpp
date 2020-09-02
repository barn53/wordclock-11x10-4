#include "settings.h"

using namespace std;

Settings::Settings()
{
}

void Settings::setSingleColor(const string& rgb)
{
    m_single_color = rgb;
    m_use_single_color = true;
    m_use_random_color_letter = false;
    m_use_random_color_word = false;
    m_changed = true;
}

void Settings::setUseRandomColorLetter()
{
    m_use_random_color_letter = true;
    m_use_random_color_word = false;
    m_use_single_color = false;
    m_changed = true;
}

void Settings::setUseRandomColorWord()
{
    m_use_random_color_word = true;
    m_use_random_color_letter = false;
    m_use_single_color = false;
    m_changed = true;
}

bool Settings::changed() const
{
    bool was(m_changed);
    m_changed = false;
    return was;
}

void Settings::print() const
{
}
