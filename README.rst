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

One-liner version
*****************

::

  $ ./oneliner.sed
  
You can run this program anywhere and you can change the file name to any one.

If you want to change the number of times, change ``100`` in the program (one place) to ``positive integer does not start with 0 what you want``. If your input is illegal, this program will quit silently (with print current pattern space: ``your input\n1``).

A limit of shebang
******************

The number of times of this program has limit because of a shebang limit. The maximam number you can use is 9999999999 (I check it with only a shell I use). 

I could not add the future which print error message because of a shebang limit.

Two-liner version
*****************

::

  $ ./twoliner.sed
  
One-liner version has a limit because of a shebang limit. Two-liner version will solve this issue. Other description is same as the one-liner version:

You can run this program anywhere and you can change the file name to any one.

If you want to change the number of times, change ``100`` in 2nd line to ``positive integer does not start with 0 what you want``. If your input is illegal, this program will quit silently (with print current pattern space: ``your input\n1``). 

I could not add the future print error message because of a shebang limit.

Dependencies
############

* sed

This program works with BSD sed, GNU sed, and POSIX sed.

This program works with BSD sed too, and it works fine now. But I recommend to use GNU sed for GNU extensions.

If you use macOS with `Homebrew <https://brew.sh/>`_, you can install GNU sed as follows::

  $ brew install gsed

NOTE
****

I think this program dose not work with sed too old version because of limit of pattren space. But I cannot check it because I don't have sed old version.

This issue might be solved. See `issue #2 <https://github.com/minamotorin/FizzBuzz-sed/issues/2>`_.

TODO
  Version control tool for sed
  
Installation
############

Dependencies
************

* `Git <https://git-scm.com/>`_

Run following commands::


  $ git clone https://github.com/minamotorin/FizzBuzz-sed.git
  $ cd FizzBuzz-sed
  $ chmod +x fizzbuzz.sed FizzBuzz_stand_alone oneliner.sed twoliner.sed
  
And run FizzBuzz program. Have fun!


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

