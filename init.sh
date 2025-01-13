#!/bin/bash

if [ ! -d $OBSI ]; then
  git clone https://github.com/taerakim/obsi $OBSI
fi
if [ ! -f $OBSI/mutaee_obsi/rule.md ]; then
  git clone https://github.com/mutaee/mutaee_obsi $OBSI/.
fi

./preference.sh
