#!/usr/bin/env sed -f

s/^0*//

# error
/^[1-9][0-9]*$/!{
c\
Error: input must be positive integer\
Usage: echo [number] | ./fizzbuzz.sed
q
}

# begin
# n = 1
s/$/\
1/

# main
: m

# speeding up
/^[0-9]*\(\(\n[0-9BFiuz]*\)\{15\}\)\n[0-9]*$/{
  h
  s//\1/; s/\n//; p; s/.*//
  x
  s/\n.*\(\n\)/\1/
}

s/\n[0-9]*$/&&/

# FizzBuzz
# if n % 3 == 0
/^[0-9]*\(\(\n[0-9BFiuz]*\)\{3\}\)*\n[0-9]*$/s/[0-9]*\(\n[0-9]*\)$/Fizz\1/
# if n % 5 == 0
/^[0-9]*\(\(\n[0-9BFiuz]*\)\{5\}\)*\n[0-9]*$/s/[0-9]*\([Fiz]*\)\(\n[0-9]*\)$/\1Buzz\2/

# end
/^\([0-9]*\)\n\(.*\)\n\1$/{
  s//\2/
  q
}

# suc
# n++
: s
s/.X/&0123456789YC/
/X/!s/.$/&X0123456789YC/
s/\(.\)X.*\1\(.\).*C/\2/
s/Y/X0/
s/\(\n\)X/\11/
/X/b s

b m
