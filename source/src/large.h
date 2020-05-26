#pragma once
#include <Arduino.h>

class Large {
public:
    Large();

    const std::vector<bool>& get(uint8_t number);

private:
    void toPhysical(uint8_t digit, bool shift);
    void toPhysical(const std::vector<bool>& source, bool shift);
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
