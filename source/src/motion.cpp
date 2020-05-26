#include "motion.h"

using namespace std;

Motion::Motion()
{
}

void Motion::sweep()
{
    m_motion_captures.erase(m_motion_captures.begin(), m_motion_captures.lower_bound(millis()));
}

void Motion::loop()
{
    if (digitalRead(MOVE_IN)
        && (millis() - m_last_capture > 5000)) {
        m_motion = true;
    }

    if (m_motion
        && (millis() - m_last_capture > 30000)) {
        uint32_t duration(min<uint32_t>(32, pow(2, m_motion_captures.size())));
        m_motion_captures.insert((duration * 60000) + millis());
        m_last_capture = millis();
        m_motion = false;
    }
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
