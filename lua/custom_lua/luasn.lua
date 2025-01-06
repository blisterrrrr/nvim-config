local luasnip = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
local f = luasnip.function_node

luasnip.add_snippets('c', {
  s(';aifndef', fmt(
      [[
    #ifndef {}
    #ednif /* ifndef XD */
      ]],
    { 
      f(function ()
        return "Hi!"
      end),
    })
  )}
)
