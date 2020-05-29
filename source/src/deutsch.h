#pragma once
#include <Arduino.h>

class Language {
public:
    Language();
    void createText(std::string& text, time_t startTime);

    static const std::string& getLetters() { return m_letters; }

private:
    void randomizeVariants();

    static std::string m_letters;

    time_t m_last_change_variants { 0 };
    bool m_variant_es_ist; // "Es Ist" am Anfang
    bool m_variant_volle_stunde_nur_zahl; // Volle Stunde nur Zahlwort
    bool m_variant_uhr_nur_volle_stunde; // "Uhr" immer oder nur zur vollen Stunde
    bool m_variant_schwaebisch_viertel; // Viertel Fünf, Dreiviertel Fünf, statt Viertel Nach Vier, bzw. Viertel Vor Fünf
};
