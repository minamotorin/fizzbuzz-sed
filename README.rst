Abstract
########

FizzBuzz written in sed.

Usage
#####

::

  $ echo [number] | ./fizzbuzz.sed

Or without execute permission::

  $ echo [number] | /pass/to/sed -f ./fizzbuzz.sed

If your computer doesn't have echo, you can also do the following::

  $ ./fizzbuzz.sed
  [number]

Dependencies
############

* sed

This program works with BSD sed, GNU sed, and POSIX sed.

NOTE
****

This program works with BSD sed, but it is veeeeeeeeeery slow (daily). Recommended to use GNU sed.

I don't understand why this issue occurs.

If you use macOS with `Homebrew <https://brew.sh/>`_, you can install GNU sed as follows::

  $ brew install gsed

Issue
#####

If you have any requests, bug reports, please use GitHub issues.

License
#######

This program is under the `Do What the Fuck You Want to Public License <http://www.wtfpl.net/txt/copying/>`_.

