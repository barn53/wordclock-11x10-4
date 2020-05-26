#pragma once
#include <Arduino.h>

class Brightness;
class Motion;
class Text;
class Display;

class Handler {
public:
    Handler(const Brightness& brightness, const Motion& motion, const Text& text, const Display& display);

    bool handleAction(const String& path);
    bool handleFileRead(const String& path);

private:
    const Brightness& m_brightness;
    const Motion& m_motion;
    const Text& m_text;
    const Display& m_display;
};
