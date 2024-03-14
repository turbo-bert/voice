#!/bin/bash


## ./zzz_countcount.sh


# for macos incl. ffmpeg

#rm -f *.aiff *.txt *.mp3

fromtext() {
    VOICE=$1
    L=$2
    WHAT="$3"
    WHATF=$L-$(echo -n "$WHAT" | tr ' ' '-').txt
    echo -n "$WHAT" > $WHATF
    if [[ ! -f $WHATF.mp3 ]]; then
        #tess $WHATF
        say -v $VOICE -f "$WHATF" -o "$WHATF.aiff"
        ffmpeg -i "$WHATF.aiff" -vn -acodec mp3 -ab 64k -ar 22050 -y "$WHATF.mp3"
        rm -f "$WHATF.aiff"
    fi
    rm -f "$WHATF"
}

## . inc_countdown.sh

fromtext anna de "sprachauswahl"
fromtext anna de "deutsch"
fromtext anna de "englisch"
fromtext anna de "einsatzbereit"
fromtext anna de "bereit"
fromtext anna de "kommunikationssysteme bereit"
fromtext anna de "kommunikationssysteme ausgefallen"
fromtext anna de "fehler"
fromtext anna de "abbruch"
fromtext anna de "ueberpruefung erfolgreich abgeschlossen"
fromtext anna de "ueberpruefung fehlgeschlagen"
fromtext anna de "ausfuehrung"
fromtext anna de "bitte warten"
fromtext anna de "die uhrzeit ist"
fromtext anna de "uhr"

fromtext anna de "a"
fromtext anna de "b"
fromtext anna de "c"
fromtext anna de "d"
fromtext anna de "e"
fromtext anna de "f"
fromtext anna de "g"
fromtext anna de "h"
fromtext anna de "i"
fromtext anna de "j"
fromtext anna de "k"
fromtext anna de "l"
fromtext anna de "m"
fromtext anna de "n"
fromtext anna de "o"
fromtext anna de "p"
fromtext anna de "q"
fromtext anna de "r"
fromtext anna de "s"
fromtext anna de "t"
fromtext anna de "u"
fromtext anna de "v"
fromtext anna de "w"
fromtext anna de "x"
fromtext anna de "y"
fromtext anna de "z"

for X in $(seq 0 60); do
    fromtext anna de "$X"
done
