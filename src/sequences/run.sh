#!/bin/bash


# for macos incl. ffmpeg

rm -f *.aiff *.txt *.mp3

fromtext() {
    VOICE=$1
    L=$2
    WHAT="$3"
    WHATF=$L-$(echo -n "$WHAT" | tr ' ' '-').txt
    echo -n "$WHAT" > $WHATF
    #tess $WHATF
    say -v $VOICE -f "$WHATF" -o "$WHATF.aiff"
    ffmpeg -i "$WHATF.aiff" -vn -acodec mp3 -ab 128 -ar 22050 -y "$WHATF.mp3"
    rm -f "$WHATF.aiff"
}

fromtext tess en "started and ready"
fromtext tess en "downloading"
fromtext tess en "please wait"
