-- Required headers for Lua
C = terralib.includecstring [[
#include "lua.h"
#include "lauxlib.h"
]]

terra twice(L : &C.lua_State ) : int
    var n : float = C.lua_tonumber(L,1)
    C.lua_pushnumber(L,n * 2)
    return 1
end

-- This is the function that communicates to lua
-- which functions can be used
terra luaopen(L : &C.lua_State ) : int
    var reg : C.luaL_Reg[2]
    reg[0]=C.luaL_Reg({ name="twice", func=twice })
    reg[1]=C.luaL_Reg({ name=nil    , func=nil   })
    C.luaL_register(L,"basic",reg)
    return 1
end

terralib.saveobj(
    os.getenv('ROOTDIR').."/out/module-basic.so",
    "sharedlibrary",
    {luaopen_basic = luaopen}
)

print(os.date())
