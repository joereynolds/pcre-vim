local conversion = {}

local dot = {
    pcre = ".",
    magic = ".",
    nomagic = "\\.",
}

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
    ["."] = dot,
    ["*"] = star,
    ["+"] = plus
}

function conversion.pcre_to_vim(string)
    local vim_expression = ""

    for i = 1, #string do
        local character = string:sub(i, i)
        local vim_character = conversion.pcre_character_to_vim_character(character, 'magic')
        vim_expression = vim_expression .. vim_character
        i = i + 1
    end
    
    return vim_expression
end

function conversion.pcre_character_to_vim_character(character, magic_option)
    if magic_option == nil then
        magic_option = 'magic'
    end

    return character_map[character][magic_option]
end

return conversion
