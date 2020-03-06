#!/usr/bin/env lua

local pcre_regex = arg[1]

print(pcre_regex)

-- TODO - Put these in convert.lua
function convert_pcre_to_vim(string)
    -- vim_expression = ""
    -- foreach character in word
    --     local vim_character = convert_character_to_vim_character(character, 'magic')
    --     vim_expression += vim_character
    -- end
    --
    -- return vim_expression
end

function convert_character_to_vim_character(character, magicOption)
end
