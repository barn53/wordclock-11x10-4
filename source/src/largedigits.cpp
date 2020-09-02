#include "largedigits.h"
#include "display.h"
#include "largevectors.h"

using namespace std;

LargeDigits::LargeDigits()
{
}

void LargeDigits::reset()
{
    m_return.clear();
    m_return.resize(PIXELS);
}

void LargeDigits::toPhysical(uint8_t digit, uint8_t shift)
{
    if (digit == 0) {
        toPhysical(m_0, shift);
    } else if (digit == 1) {
        toPhysical(m_1, shift);
    } else if (digit == 2) {
        toPhysical(m_2, shift);
    } else if (digit == 3) {
        toPhysical(m_3, shift);
    } else if (digit == 4) {
        toPhysical(m_4, shift);
    } else if (digit == 5) {
        toPhysical(m_5, shift);
    } else if (digit == 6) {
        toPhysical(m_6, shift);
    } else if (digit == 7) {
        toPhysical(m_7, shift);
    } else if (digit == 8) {
        toPhysical(m_8, shift);
    } else if (digit == 9) {
        toPhysical(m_9, shift);
    }
}

void LargeDigits::toPhysical(const vector<bool>& source, uint8_t shift)
{
    shift = min<uint8_t>(shift, 6);
    for (auto ii = 0; ii < (PIXELS); ++ii) {
        if (source[ii]) {
            uint8_t index(ii);
            index += shift;
            m_return[Display::indexToPhysical(index)] = true;
        }
    }
}

const vector<bool>& LargeDigits::get(uint8_t number)
{
    reset();
    if (number > 99) {
        toPhysical(m_question, false);
    }

    uint8_t tens(number / 10);
    uint8_t ones(number % 10);

    if (tens == 0) {
        toPhysical(ones, 3);
    } else {
        toPhysical(tens, false);
        toPhysical(ones, 6);
    }

    return m_return;
}
