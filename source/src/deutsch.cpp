#include "deutsch.h"
#include "utils.h"

using namespace std;

// clang-format off
string Language::m_letters =
// 109
    "ES IST FuNF" // 9 - 0
    "ZEHNZWANZIG" // 8 - 1
    "DREIVIERTEL" // 7 - 2
    "VORWLANNACH" // 6 - 3
    "HALB ELFuNF" // 5 - 4
    "EINS   ZWEI" // 4 - 5
    "DREI   VIER" // 3 - 6
    "SECHS  ACHT" // 2 - 7
    "SIEBENZWoLF" // 1 - 8
    "ZEHNEUN UHR" // 0 - 9
//   0    5    10
    ;
// clang-format on

Language::Language()
{
}

void Language::randomizeVariants()
{
    m_variant_es_ist = random(2);
    m_variant_volle_stunde_nur_zahl = random(2);
    m_variant_uhr_nur_volle_stunde = random(2);
    m_variant_schwaebisch_viertel = random(2);
}

void Language::createText(string& text, time_t startTime)
{
    if (millis() - m_last_change_variants > (1 * 60 * 1000)) {
        randomizeVariants();
        m_last_change_variants = millis();
    }

    int hour;
    int minute;
    getHourMinuteForCurrentTimeFromTime(startTime, hour, minute);

    if (m_variant_es_ist) {
        text = "ES IST ";
    } else {
        text.clear();
    }

    if (minute >= 5 && minute < 10) {
        text.append("FuNF NACH ");
    } else if (minute >= 10 && minute < 15) {
        text.append("ZEHN NACH ");
    } else if (minute >= 15 && minute < 20) {
        if (m_variant_schwaebisch_viertel) {
            text.append("VIERTEL ");
            ++hour;
        } else {
            text.append("VIERTEL NACH ");
        }
    } else if (minute >= 20 && minute < 25) {
        text.append("ZWANZIG NACH ");
    } else if (minute >= 25 && minute < 30) {
        text.append("FuNF VOR HALB ");
        ++hour;
    } else if (minute >= 30 && minute < 35) {
        text.append("HALB ");
        ++hour;
    } else if (minute >= 35 && minute < 40) {
        text.append("FuNF NACH HALB ");
        ++hour;
    } else if (minute >= 40 && minute < 45) {
        text.append("ZWANZIG VOR ");
        ++hour;
    } else if (minute >= 45 && minute < 50) {
        if (m_variant_schwaebisch_viertel) {
            text.append("DREIVIERTEL ");
        } else {
            text.append("VIERTEL VOR ");
        }
        ++hour;
    } else if (minute >= 50 && minute < 55) {
        text.append("ZEHN VOR ");
        ++hour;
    } else if (minute >= 55) {
        text.append("FuNF VOR ");
        ++hour;
    }

    bool appendUhr(true);

    if (m_variant_uhr_nur_volle_stunde) {
        if (minute >= 0 && minute < 5) {
            appendUhr = true;
        } else {
            appendUhr = false;
        }
    }

    if (m_variant_volle_stunde_nur_zahl) {
        if (minute >= 0 && minute < 5) {
            text.clear();
            appendUhr = false;
        }
    }

    if (m_variant_schwaebisch_viertel) {
        appendUhr = false;
    }

    switch (hour) {
    case 0:
    case 12:
    case 24:
        text.append("ZWoLF ");
        break;
    case 1:
    case 13:
        if (minute >= 0 && minute < 5) {
            if (m_variant_volle_stunde_nur_zahl) {
                text.append("EINS ");
                appendUhr = false;
            } else {
                text.append("EIN ");
                appendUhr = true;
            }
        } else {
            text.append("EINS ");
            appendUhr = false;
        }
        break;
    case 2:
    case 14:
        text.append("ZWEI ");
        break;
    case 3:
    case 15:
        text.append("DREI ");
        break;
    case 4:
    case 16:
        text.append("VIER ");
        break;
    case 5:
    case 17:
        text.append("FuNF ");
        break;
    case 6:
    case 18:
        text.append("SECHS ");
        break;
    case 7:
    case 19:
        text.append("SIEBEN ");
        break;
    case 8:
    case 20:
        text.append("ACHT ");
        break;
    case 9:
    case 21:
        text.append("NEUN ");
        break;
    case 10:
    case 22:
        text.append("ZEHN ");
        break;
    case 11:
    case 23:
        text.append("ELF ");
        break;
    }

    if (appendUhr) {
        text.append("UHR");
    }
}
