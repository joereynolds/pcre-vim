local luaunit = require "luaunit"
local conversion = require "./src/conversion"

function test_characters_are_mapped_correctly()
    local actual = conversion.pcre_character_to_vim_character("+", "magic")
    local expected = "\\+"
    luaunit.assertEquals(actual, expected)
end

function test_characters_are_mapped_correctly_without_a_magic_option_specified()
    local actual = conversion.pcre_character_to_vim_character("+")
    local expected = "\\+"
    luaunit.assertEquals(actual, expected)
end

function test_characters_are_mapped_correctly_with_a_nomagic_option_specified()
    local actual = conversion.pcre_character_to_vim_character("*", "nomagic")
    local expected = "\\*"
    luaunit.assertEquals(actual, expected)
end

function test_expressions_are_mapped_correctly()
    local actual = conversion.pcre_to_vim("..+")
    local expected = "..\\+"
    luaunit.assertEquals(actual, expected)
end

os.exit(luaunit.LuaUnit.run())
