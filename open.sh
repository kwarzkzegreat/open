#!/bin/bash

open() {
if [ -z "$1" ]; then
    echo "open what, dummy?"
else
  if [[ "$1" == *.pdf ]]; then
      mupdf "$1"
  else
      if [[  "$1" == *.jpg ]] \
      || [[ "$1" == *.png ]] \
      || [[ "$1" == *.jpeg ]] \
      || [[ "$1" == *.gif ]]; then
    display -quiet -size 320x180 "$1"
      else
          find -path "*$1*" -ok exo-open {} \;
      fi


  fi
fi
}

open "$1"
