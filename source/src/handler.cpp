#include "handler.h"
#include "brightness.h"
#include "display.h"
#include "motion.h"
#include "text.h"

#include <ESP8266WebServer.h>
#include <FS.h>
// #include <LittleFS.h>

extern ESP8266WebServer server;
extern String timezone;

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

Handler::Handler(const Brightness& brightness, const Motion& motion, const Text& text, const Display& display)
    : m_brightness(brightness)
    , m_motion(motion)
    , m_text(text)
    , m_display(display)
{
}

bool Handler::handleAction(const String& path)
{
    if (path.startsWith("/action/")) {
        String action(path.substring(8));
        // Serial.printf("handleAction: %s\n", action.c_str());

        if (action == "get_brightness") {
            String med(m_brightness.getMedMeasure());
            server.send(200, "text/plain", med);
            return true;
        } else if (action == "get_pixelvalue") {
            String med(m_brightness.pixelBrightness());
            server.send(200, "text/plain", med);
            return true;
        } else if (action == "get_pixelcurrent") {
            String med(m_display.pixelCurrent());
            server.send(200, "text/plain", med + " mA");
            return true;
        } else if (action == "get_num_captures") {
            String med(m_motion.getNumActiveCaptures());
            server.send(200, "text/plain", med);
            return true;
        } else if (action == "get_remaining_time") {
            String med(m_motion.getRemainingTime());
            server.send(200, "text/plain", med + " s");
            return true;
        } else if (action == "get_datetime") {
            server.send(200, "text/plain", toDateTime(m_text.getStartTime() + (millis() / 1000)));
            return true;
        } else if (action == "get_lasttext") {
            String text(m_text.getLastText().c_str());
            text.replace("a", "Ä");
            text.replace("o", "Ö");
            text.replace("u", "Ü");
            for (auto mm = 0; mm < m_text.getLastMin(); ++mm) {
                text += "&nbsp;&nbsp;&nbsp;&bull;";
            }
            server.send(200, "text/plain", text);
            return true;
        } else if (action == "get_lastsync") {
            server.send(200, "text/plain", toDateTime(m_text.getStartTime()));
            return true;
        } else if (action == "get_timezone") {
            server.send(200, "text/plain", timezone);
            return true;
        } else if (action == "get_ip") {
            server.send(200, "text/plain", WiFi.localIP().toString());
            return true;
        } else if (action == "get_host") {
            server.send(200, "text/plain", WiFi.hostname());
            return true;
        } else if (action == "get_rssi") {
            String rssi(WiFi.RSSI());
            server.send(200, "text/plain", rssi + " dB");
            return true;
        }
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
        size_t sent = server.streamFile(file, contentType); // And send it to the client
        file.close(); // Then close the file again
        // Serial.printf("\tSent %u bytes\n", sent);
        return true;
    }
    // Serial.print("\nFile Not Found\n");
    return false; // If the file doesn't exist, return false
}
