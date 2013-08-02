libstr
========
A collection of C functions as an extension to the C standard string.h. This
library __DOES NOT__ aim to replace the use of c-strings but rather make them
easier to implement.

URLs
====
Github links:

  * http: http://www.github.com/theNerd247/libstr
  * ssh:  git@github.com:theNerd247/libstr.git

Installing
==========
Nothing new here, use the self-help way of installing software (for Linux only
so far) using GNU make.

Configuring
-----------
'Keep it simple stupid'. This project will try to remain sane for developers and
so will not (for now) revert to huge build tools such as automake/autoconf cmake
or the like. Please edit the Makefile to suit your compile time needs. If you do
edit the Makefile please commit the change and send a pull request to upstream
repo (git@github.com:theNerd247/libstr.git).

Building
--------
Simply follow these steps (btw '$' delimits a command prompt as seen on a
shell): 

    $make
      ...
    $make check [optional and so far isn't implemented]
    $sudo make install
      ...

This will install libstr.so.x.y.z to /usr/lib/ by default (as well as create a
symbolic link to libstr.so.x.y.z called libstr.so. To change this please
edit the Makefile and then run: 

    $sudo make reinstall

Documentation 
=============
Documentation for all the functions, macros, structures, and typedefs are found
in the header files of the source code itself. This is a temporary fix and will
soon be replaced by a nice, neat man page.

Help And Bugs
=============
Programmers aren't perfect, bugs do occur - as well as user errors not to
mention. If you need extra help please use these options numbered in priority
level (1 being the highest) 

  1. Open an issue on the github project (see the top of this document for url)
  2. Send an email describing your issue - in as much detail as possible please
		 - to noah.harvey247@gmail.com
  3. If none of the help try and figure the solution on your own or post your
		 question on a developers forum (Stack Overflow is one suggestion).

Changelog
=========
