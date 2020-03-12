local conversion = {}

local star = {
    pcre = "*",
    magic = "*",
    nomagic = "\\*",
}

local plus = {
    pcre = "+",
    magic = "\\+",
    nomagic = "\\+",
}

local character_map = {
    ["*"] = star,
    ["+"] = plus
}

function conversion.convert_pcre_to_vim(string)
    -- vim_expression = ""
    -- foreach character in word
    --     local vim_character = convert_character_to_vim_character(character, 'magic')
    --     vim_expression += vim_character
    -- end
    --
    -- return vim_expression
end

function conversion.pcre_character_to_vim_character(character, magic_option)
    if magic_option == nil then
        magic_option = 'magic'
    end

    return character_map[character][magic_option]
end

return conversion
