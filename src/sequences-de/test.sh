#!/bin/bash


## ./zzz_countcount.sh


# for macos incl. ffmpeg

#rm -f *.aiff *.txt *.mp3

p() {
    L=de
    WHAT="$1"
    WHATF=$L-$(echo -n "$WHAT" | tr ' ' '-').txt.mp3
    echo "$WHATF"
    afplay $WHATF
}



pfull() {
    SV=0.4
    SPAUSE=0.5
    S="$1"
    SL=${#S}
    ((SL=SL-1))
    for I in $(seq 0 $SL); do
        C=${S:I:1}
        if [[ "$C" = " " ]]; then
            sleep $SPAUSE
        else
            p "$C" &
            sleep $SV
        fi
    done
}



p "sprachauswahl"
p "deutsch"
p "englisch"
pfull "1234567890abcdef"
