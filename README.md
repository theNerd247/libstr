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

__NOTICE:__ Arch Linux users! This project can be found on the AUR as libstr.

Configuring
-----------
'Keep it simple stupid'. This project will try to remain sane for developers and
so will not (for now) revert to huge build tools such as automake/autoconf cmake
or the like. Please edit the Makefile to suit your compile time needs. If you do
edit the Makefile please commit the change and send a pull request to upstream
repo (git@github.com:theNerd247/libstr.git).

Patches
-------
Patches are found in the patches directory. Patches are optional, however they are
recomended. Make will __NOT__ automatically install the patches, for now they should
be manually installed. For those who are using the Arch Linux AUR PKGBUILD for
building patches are automatically applied. Please note that some patches fix
memory leaks and are not soley optimizations and not installing these could
result in bad things.

Patches are for the current library version. A new version release will have
applied all patches included in the previous version. For example: version 3 has
2 patches (a.patch, b.patch). These will be located in patches/ dir. Then
version 4 is released in which a.patch and b.patch will no longer exist because
they will have been applied.

__NOTE:__ If - for whatever reason - patches remain between versions please
think twice before applying the patches.

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
v0.0.2 
	* moved libstr.h and libstr.c to str.h and str.c respectively
	* rewrote all functions to follow memory safe methods. The function arguments have changed. See
	  str.h for more details
v0.0.1
	* init repo
	* contains 3 basic functions - so far
