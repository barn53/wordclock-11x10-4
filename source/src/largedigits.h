#pragma once
#include <Arduino.h>

class LargeDigits {
public:
    LargeDigits();

    const std::vector<bool>& get(uint8_t number);

private:
    void toPhysical(uint8_t digit, uint8_t shift);
    void toPhysical(const std::vector<bool>& source, uint8_t shift);
    void reset();

    std::vector<bool> m_return;

    static std::vector<bool> m_0;
    static std::vector<bool> m_1;
    static std::vector<bool> m_2;
    static std::vector<bool> m_3;
    static std::vector<bool> m_4;
    static std::vector<bool> m_5;
    static std::vector<bool> m_6;
    static std::vector<bool> m_7;
    static std::vector<bool> m_8;
    static std::vector<bool> m_9;
    static std::vector<bool> m_question;
};
