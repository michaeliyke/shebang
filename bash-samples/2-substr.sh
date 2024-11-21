#!/usr/bin/env bash
# ${VAR/PATTERN/REPLACEMENT}
# First match of Pattern, within var replaced with Replacement
# If Replacement is omitted, then the first match of Pattern is replaced by empty

# ${VAR//PATTERN/REPLACEMENT}
# Global replacement.
# All matches of Pattern, within var replaced with Replacement.
# if Replacement is omitted, then all occurrences of Pattern are replaced by empty

clear

# PURE REPLACEMENTS
pathname="/home/bozo/ideas/thoughts.for.today"

t=${pathname/bozo/clown}
echo "$pathname/bozo/clown: $t"

