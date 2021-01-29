#!/usr/bin/env zsh

program=("fizzbuzz.sed" "FizzBuzz_stand_alone" "oneliner.sed" "twoliner.sed")
times="${1:-100}"
chmod u+x "$program[@]"

ErrorCheck(){
  diff -q <(seq "$times" | sed 's/.*[05]$/Buzz/; n; s/.*[05]$/Buzz/; n; s/.*[05]$/Buzz/; s/[0-9]*/Fizz/') <(./$1 <<<"$times") 2> /dev/null || echo 'Error at ' "$1" >&2
}

for run in "$program[@]"; do
  ErrorCheck "$run"
done
