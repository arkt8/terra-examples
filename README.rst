Terra Examples
==============

Some examples using Terra/Lua language.


Running
-------

* `./run` - list Lua and Terra calling ways
* `./run lua test.something` - Run 'src/test/something.lua'
* `./run terra compile.something` - Run 'src/compile/something.t'

We call Lua and Terra via the `./run` script because there are
some paths for Lua and Terra that need to be called in a
way that code be organized and still reachable by the "require"
inside modules.


Requisites
----------

* Lua5.1 installed (for modules test)
* Terra installed

Usually to avoid mess with system I uncompress terra package
download from the site and unpack into  $HOME/.local/lib/terra
and then links $HOME/.local/terra/bin/terra into $HOME/.local/bin/terra

Note that doing this $HOME/.local/bin should be under the environment
PATH set in your bashrc, zshrc, fishrc...


Example Index
-------------

Run `./run` bash script without arguments to have
a list of examples separated by interpreter. Then run

* `./run terra name`

or

* `./run lua name`

All generated binaries will be put inside the `./out`
directory. For convencience, `./run clean` will wipe them.
