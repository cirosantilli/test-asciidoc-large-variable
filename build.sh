#!/usr/bin/env bash

f=README.adoc
rm -f "$f"
printf '= h\n' >> "$f"
printf ':a: ' >> "$f"
printf "%$((2 ** 18))s" | sed 's/ /a/g' >> "$f"
printf '\n\n' >> "$f"
printf "%$((84 * (2 ** 10)))s" | sed 's/ /{a}/g' >> "$f"
printf '\n' >> "$f"
exit
asciidoctor README.adoc
