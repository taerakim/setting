#!/bin/bash

echo -en "\033[32;7m execute init.sh \033[0m\n"

# preference
if [ ! -d $GOIN/setting ]; then
  echo "setting clone"
  git clone https://github.com/taerakim/setting $GOIN/setting
  if [ -f $GOIN/setting/init.sh ]; then
    bash $GOIN/setting/preference.sh
  fi
else
  echo "setting pull"
  cd $GOIN/setting
  git pull
fi

# obsidian
if [ ! -d $OBSI ]; then
  echo "obsi clone"
  git clone https://github.com/taerakim/obsidian $OBSI
else
  echo "obsi pull"
  cd $OBSI
  git pull
fi
if [ ! -f $OBSI/mutaee_obsi/rule.md ]; then
  if [ -d $OBSI/mutaee_obsi ]; then
    rmdir $OBSI/mutaee_obsi
  fi
  echo "mutaee clone"
  git clone https://github.com/mutaee/mutaee_obsi $OBSI/mutaee_obsi
fi
