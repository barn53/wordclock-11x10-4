#pragma once
#include <Arduino.h>
#include <set>

#define MOVE_IN D2

class Motion {
public:
    Motion();

    void loop();
    void print() const;

    bool isActive();

    uint16_t getNumActiveCaptures() const;
    unsigned long getRemainingTime() const;

private:
    void sweep();
    std::set<unsigned long> m_motion_captures;
    bool m_motion { false };
    unsigned long m_last_capture { 0 };
};
