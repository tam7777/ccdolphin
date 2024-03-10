#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./ccdolphin "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual OK"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 21 '5+20-4'

echo ALL OK
