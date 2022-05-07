C = terralib.includecstring [[
#include <stdio.h>
#include "luaconf.h"
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
]]
--terralib.linklibrary("liblua5.1-c++.so")


terra main_terra_lua (argc : int, argv: &rawstring) : int
    var L : &C.lua_State = C.luaL_newstate()
    C.luaL_openlibs(L)
    var ret =  C.luaL_loadfile(L, argv[1])
    var x = C.lua_pcall(L,0,0,0)
    C.lua_close(L)
    return ret
end

terralib.saveobj(
    os.getenv("ROOTDIR")..'/out/tluaexe',
    'executable',
    { main = main_terra_lua },
    { "-L./lib" -- Extra path for include linked library
--    , "-static" -- Executable will be independend on system lib
                -- Comment this line if you want to use it dynamic
    , "-llua"   -- (liblua.a) may vary according to system
    , "-lm"     -- C math library used by lua math functions
    , "-ldl"    -- dynamic linker
    }
)
