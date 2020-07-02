#!/bin/bash

readarray -t NEEDS_CORRECTION_RAW < <(dartfmt -l 120 -n lib)
readarray -t NEEDS_CORRECTION < <(printf '%s\n' "${NEEDS_CORRECTION_RAW[@]}" | grep -Ev "(\.g\.dart)|(\.freezed\.dart)")

if [ ${#NEEDS_CORRECTION[@]} -gt 0 ]; then
  for i in "${NEEDS_CORRECTION[@]}"
  do
    delta=$(diff lib/$i <(dartfmt -l 120 lib/$i))
    delta=${delta//$'\n'/%0A}
    delta=${delta:0:100}
    echo "::warning file=$i::Found something darfmt wants to change:%0A$delta"
  done
  exit 1
fi
