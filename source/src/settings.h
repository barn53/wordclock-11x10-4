#pragma once
#include <Arduino.h>

class Settings {
public:
    Settings();

    void setSingleColor(const std::string& rgb);
    const std::string& getSingleColor() const { return m_single_color; };
    bool useSingleColor() const { return m_use_single_color; }

    void setUseRandomColorLetter();
    bool useRandomColorLetter() const { return m_use_random_color_letter; }

    void setUseRandomColorWord();
    bool useRandomColorWord() const { return m_use_random_color_word; }

    void print() const;

    bool changed() const;

private:
    std::string m_single_color { "ffffff" };
    bool m_use_single_color { true };
    bool m_use_random_color_letter { false };
    bool m_use_random_color_word { false };

    mutable bool m_changed { 0 };
};

#if 0

Display Anzeigefarbe
    - Feste Farben Vorgaben
    - Verläufe Vorgaben
    - Regenbogen
    - Zufall pro Buchstaben
    - Zufall pro Wort

Display Animation
    - Zeitwechsel

Formulierungen
    - Zufall
    - schwäbich
    - ES IST aus
    - UHR nur zur vollen Stunde
    - Volle Stunde nur Zahlwort

Helligkeit
    - Dunkler/heller machen (immer automatisch angepasst aber generell dunkler/heller)



Datum anzeigen
Temperatur innen / außen von Netatmo
Müllerinnerung blau/gelb/schwarz


Tetris!

...?

#endif
