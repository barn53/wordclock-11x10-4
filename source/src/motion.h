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
    bool isCaptureInQueue() const { return m_capture_in_queue; }

    void reset();
    void queueCapture();

    uint16_t getNumActiveCaptures() const;
    uint16_t getMaxCaptures() const { return m_max_captures; }
    uint16_t getCountCaptures() const { return m_count_captures; }
    unsigned long getRemainingTime() const;

private:
    void sweep();
    std::set<unsigned long> m_motion_captures;
    bool m_capture_in_queue { false };
    unsigned long m_last_capture { 0 };
    uint16_t m_max_captures { 0 };
    uint16_t m_count_captures { 0 };
};
