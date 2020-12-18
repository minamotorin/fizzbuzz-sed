#!/usr/bin/env sed -f

# error
/[^0-9]/{
c\
Error: input must be positive integer\
Usage: echo [number] | ./fizzbuzz.sed
# require for mac sed
q
}

# begin
s/^0*//
# n = 1
s/$/\
1/

# main
: m

s/\n[0-9]*$/&&/

# FizzBuzz
# if n % 3 == 0
/^[0-9]*\(\n[0-9BFiuz]*\n[0-9BFiuz]*\n[0-9BFiuz]*\)*\n[0-9BFiuz]*$/s/[0-9]*\(\n[0-9]*\)$/Fizz\1/
# if n % 5 == 0
/^[0-9]*\(\n[0-9BFiuz]*\n[0-9BFiuz]*\n[0-9BFiuz]*\n[0-9BFiuz]*\n[0-9BFiuz]*\)*\n[0-9BFiuz]*$/s/[0-9]*\([Fiz]*\)\(\n[0-9]*\)$/\1Buzz\2/

# end
/^\(.*\)\(\n.*\)*\n\1$/{
  s/^[0-9]*\n//
  s/\n[0-9]*$//
  q
}

# suc
# n++
: s
/X/s/\(.\)X/\1X0123456789YC/
/X/!s/\(.\)$/\1X0123456789YC/
s/\(.\)X.*\1\(.\).*C/\2/
s/Y/X0/
s/\(\n\)X/\11/
/X/b s

b m
