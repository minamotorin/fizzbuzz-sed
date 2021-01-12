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
  
Stand-alone version
*******************

::

  $ ./FizzBuzz_stand_alone

* Don't change the script file name
* Run in the same directory as the file

If you want to change the number of times, change the number of 4th line. Don't change other than numbers.

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

Reference
#########

I used as a reference
************************

`GNU sed online manual <https://www.gnu.org/software/sed/manual/sed.html>`_
  Usage of sed
  
`Solving Arithmetic Golf Problem with Sed <https://docs.google.com/document/d/1utvJaMJw2vE6Id3TUu7O8-Grkz46hjYdasyLKXBAMD0/edit>`_
  The idea of successor function

`Hello world in every computer language <https://github.com/leachim6/hello-world/blob/master/s/sed.sed>`_
  Stand-alone version

Similar project
***************

`FizzBuzz solutions in any language you want! <https://github.com/NLDev/Hacktoberfest-2020-FizzBuzz/blob/master/Sed/FizzBuzzStandalone.sed>`_
  Needs to be rewritten every time the value is changed

`FizzBuzz in every programming language <https://github.com/zenware/FizzBuzz/blob/master/sed.sh>`_
  Depends on shell
  
`sedbuzz <https://github.com/mikeantonacci/sedbuzz>`_
  Depends on seq but good at check divisibility
  
`fizzbuzz.sed <https://github.com/tlvb/fizzbuzz.sed>`_
  Very good

Issue
#####

If you have any requests, bug reports, please use GitHub issues.

License
#######

This program is under the `Do What the Fuck You Want to Public License <http://www.wtfpl.net/txt/copying/>`_.

