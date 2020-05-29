#include "handler.h"
#include "brightness.h"
#include "display.h"
#include "motion.h"
#include "settings.h"
#include "text.h"

#include <ESP8266WebServer.h>
#include <FS.h>
// #include <LittleFS.h>

extern ESP8266WebServer server;
extern String timezone;
extern bool dst;

using namespace std;

namespace {
String getContentType(const String& filename)
{
    if (filename.endsWith(".html")) {
        return "text/html";
    } else if (filename.endsWith(".css")) {
        return "text/css";
    } else if (filename.endsWith(".js")) {
        return "application/javascript";
    } else if (filename.endsWith(".ico")) {
        return "image/x-icon";
    }
    return "text/plain";
}

String toDateTime(time_t time)
{
    time_t t(time);
    tm* currentTime(localtime(&t));
    static char datetime[22];
    sprintf(datetime, "%u.%u.%u %02u:%02u:%02u",
        currentTime->tm_mday, currentTime->tm_mon + 1, currentTime->tm_year + 1900,
        currentTime->tm_hour, currentTime->tm_min, currentTime->tm_sec);
    return datetime;
}
}

Handler::Handler(Brightness& brightness, Motion& motion, Text& text, Display& display, Settings& settings)
    : m_brightness(brightness)
    , m_motion(motion)
    , m_text(text)
    , m_display(display)
    , m_settings(settings)
{
}

bool Handler::handleDo(const String& action) const
{
    // Serial.printf("handleAction: do %s\n", action.c_str());
    if (action == "reset_motion") {
        m_motion.reset();
        server.send(200, "text/plain", "1");
        return true;
    } else if (action == "queue_capture") {
        m_motion.queueCapture();
        server.send(200, "text/plain", "1");
        return true;
    } else if (action == "display_clear") {
        m_motion.reset();
        m_display.clear();
        server.send(200, "text/plain", "1");
        return true;
    }
    return false;
}

bool Handler::handleSet(const String& action) const
{
    // Serial.printf("handleAction: set %s\n", action.c_str());
    if (action.startsWith("color/")) {
        string rgb(action.substring(6).c_str());
        if (rgb.size() == 6
            && rgb.find_first_not_of("0123456789abcdefABCDEF") == string::npos) {
            m_settings.setSingleColor(rgb);
            server.send(200, "text/plain", "1");
        } else {
            server.send(200, "text/plain", "0");
        }
        return true;
    } else if (action == "random_color_letter") {
        m_settings.setUseRandomColorLetter();
        server.send(200, "text/plain", "1");
        return true;
    } else if (action == "random_color_word") {
        m_settings.setUseRandomColorWord();
        server.send(200, "text/plain", "1");
        return true;
    }
    return false;
}

bool Handler::handleGet(const String& action) const
{
    // Serial.printf("handleAction: get %s\n", action.c_str());
    if (action == "brightness") {
        String s(m_brightness.getMedMeasure());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "pixelbrightness") {
        String s(m_brightness.pixelBrightness());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "pixelcurrent") {
        String s(m_display.pixelCurrent());
        server.send(200, "text/plain", s + " mA");
        return true;
    } else if (action == "kwh") {
        String s(m_display.kWh());
        server.send(200, "text/plain", s + " kWh");
        return true;
    } else if (action == "clearedcounter") {
        String s(m_display.clearedCounter());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "num_captures") {
        String s(m_motion.getNumActiveCaptures());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "max_captures") {
        String s(m_motion.getMaxCaptures());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "count_captures") {
        String s(m_motion.getCountCaptures());
        server.send(200, "text/plain", s);
        return true;
    } else if (action == "motionsensor") {
        String s(digitalRead(MOVE_IN));
        server.send(200, "text/plain", s + " - " + m_motion.isCaptureInQueue());
        return true;
    } else if (action == "remaining_time") {
        String s(m_motion.getRemainingTime());
        server.send(200, "text/plain", s + " s");
        return true;
    } else if (action == "datetime") {
        server.send(200, "text/plain", toDateTime(m_text.getStartTime() + (millis() / 1000)));
        return true;
    } else if (action == "lasttext") {
        String text;
        if (!m_motion.isActive()) {
            text = "– Display ist aus –";
        } else {
            text = m_text.getLastText().c_str();
            text.replace("a", "Ä");
            text.replace("o", "Ö");
            text.replace("u", "Ü");
            for (auto mm = 0; mm < m_text.getLastMin(); ++mm) {
                text += "&nbsp;&nbsp;&nbsp;&bull;";
            }
        }
        server.send(200, "text/plain", text);
        return true;
    } else if (action == "lastsync") {
        server.send(200, "text/plain", toDateTime(m_text.getStartTime()));
        return true;
    } else if (action == "timezone") {
        server.send(200, "text/plain", timezone);
        return true;
    } else if (action == "dst") {
        server.send(200, "text/plain", dst ? "ja" : "nein");
        return true;
    } else if (action == "ip") {
        server.send(200, "text/plain", WiFi.localIP().toString());
        return true;
    } else if (action == "host") {
        server.send(200, "text/plain", WiFi.hostname());
        return true;
    } else if (action == "rssi") {
        String s(WiFi.RSSI());
        server.send(200, "text/plain", s + " dB");
        return true;
    }
    return false;
}

bool Handler::handleAction(const String& path) const
{
    if (path.startsWith("/action/get/")) {
        String action(path.substring(12));
        return handleGet(action);
    } else if (path.startsWith("/action/do/")) {
        String action(path.substring(11));
        return handleDo(action);
    } else if (path.startsWith("/action/set/")) {
        String action(path.substring(12));
        return handleSet(action);
    }
    return false;
}

bool Handler::handleFileRead(const String& path)
{
    String p(path);
    // Serial.printf("handleFileRead: %s\n", path.c_str());
    if (path.endsWith("/")) {
        p += "index.html"; // If a folder is requested, send the index file
        // Serial.printf(" --> %s\n", p.c_str());
    }
    String contentType = getContentType(p); // Get the MIME type

    if (SPIFFS.exists(p)) { // If the file exists
        File file = SPIFFS.open(p, "r"); // Open it
        // size_t sent =
        server.streamFile(file, contentType); // And send it to the client
        file.close(); // Then close the file again
        // Serial.printf("\tSent %u bytes\n", sent);
        return true;
    }
    // Serial.print("\nFile Not Found\n");
    return false; // If the file doesn't exist, return false
}
