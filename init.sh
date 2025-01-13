#!/bin/bash

# preference
if [ ! -d $GOIN/setting ]; then
  git clone https://github.com/taerakim/setting $GOIN/setting
  if [ -f $GOIN/setting/init.sh ]; then
    bash $GOIN/setting/preference.sh
  fi
fi

# obsidian
if [ ! -d $OBSI ]; then
  git clone https://github.com/taerakim/obsi $OBSI
fi
if [ ! -f $OBSI/mutaee_obsi/rule.md ]; then
  git clone https://github.com/mutaee/mutaee_obsi $OBSI/.
fi
