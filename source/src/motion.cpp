#include "motion.h"

using namespace std;

Motion::Motion()
{
}

void Motion::sweep()
{
    m_motion_captures.erase(m_motion_captures.begin(), m_motion_captures.lower_bound(millis()));
}

void Motion::reset()
{
    m_motion_captures.clear();
    m_capture_in_queue = false;
    m_last_capture = millis();
    m_max_captures = 0;
    m_count_captures = 0;
}

void Motion::loop()
{
    if (digitalRead(MOVE_IN)
        && (millis() - m_last_capture > 5000
            || m_motion_captures.empty())) {
        m_capture_in_queue = true;
    }

    if (m_capture_in_queue
        && (millis() - m_last_capture > 30000
            || m_motion_captures.empty())) {
        uint32_t duration(min<uint32_t>(16, pow(1.7, m_motion_captures.size())));
        m_motion_captures.insert((duration * 60000) + millis());
        ++m_count_captures;
        m_last_capture = millis();
        m_max_captures = max<uint16_t>(m_max_captures, m_motion_captures.size());
        m_capture_in_queue = false;
    }
}

void Motion::queueCapture()
{
    m_capture_in_queue = true;
}

bool Motion::isActive()
{
    sweep();
    return ((!m_motion_captures.empty())
        || millis() < 60000);
}

uint16_t Motion::getNumActiveCaptures() const
{
    return m_motion_captures.size();
}

unsigned long Motion::getRemainingTime() const
{
    if (!m_motion_captures.empty()) {
        return ((*m_motion_captures.rbegin()) - millis()) / 1000;
    }
    return 0;
}

void Motion::print() const
{
    Serial.printf("Motion captures\n");
    for (const auto& ref : m_motion_captures) {
        Serial.printf("%lu s\n", (ref - millis()) / 1000);
    }
}
