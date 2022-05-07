Terra Examples
==============

Some examples using [Terra](https://terralang.org)/[Lua](https://lua.org)
language.

If you don't find some example on _Index_ below and have an Idea or
want to help with examples, feel free to create an issue or make a
pull request.


Running
-------

* ``./run`` - list Lua and Terra calling ways
* ``./run lua test.something`` - Run 'src/test/something.lua'
* ``./run terra compile.something`` - Run 'src/compile/something.t'
* ``./run clean`` - Wipe generated binaries from 'out' folder

We call Lua and Terra via the ``./run`` script because there are
some paths for Lua and Terra that need to be called in a
way that code be organized and still reachable by the "require"
inside modules.


Code structure
--------------

* ``src/`` place for all Terra files.
* ``src/test/`` place for tests in Lua or other Terra files.
* ``clang/`` place for C headers
* ``out/`` where binaries are created
* ``lib/`` if you have trouble when linking with C++ compiler
  you could use this lib... not worry, when needed the instructions
  will be inside the Terra file you'll be trying to use


Requisites
----------

* Lua5.1 installed (for modules test)
* [Terra](https://terralang.org) (>= 1.0.0-beta4) installed


Usually to avoid mess with system I uncompress terra package
download from the site and unpack into  ``$HOME/.local/lib/terra``
and then links ``ln -sf $HOME/.local/terra/bin/terra $HOME/.local/bin/terra``

Note that doing this ``$HOME/.local/bin`` should be specified
on the environment PATH variable, that can be easily set
adding the following in your bashrc or zshrc:

``export PATH="${HOME}/.local/bin:"$PATH``

Index
-----

* Creating a Lua module using Terra
   - Build: ``./run terra module.basic``
   - Run:   ``./run lua   test.module.basic``

* Recompiling Lua from inside Terra
   - Build: ``./run terra recomplua``
   - Test:  ``./out/recomplua <AnyLuaScript.lua>``
