#pragma once
#include <Arduino.h>

class Brightness;
class Motion;
class Text;
class Display;
class Settings;

class Handler {
public:
    Handler(Brightness& brightness, Motion& motion, Text& text, Display& display, Settings& settings);

    bool handleAction(const String& path) const;

    static bool handleFileRead(const String& path);

private:
    bool handleSet(const String& action) const;
    bool handleGet(const String& action) const;
    bool handleDo(const String& action) const;

    Brightness& m_brightness;
    Motion& m_motion;
    Text& m_text;
    Display& m_display;
    Settings& m_settings;
};
