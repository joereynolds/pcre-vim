#!/usr/bin/env lua

local conversion = require "./src/conversion"

local pcre_regex = arg[1]

print(conversion.pcre_to_vim(pcre_regex))
