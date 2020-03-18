# pcre-vim

NOTE: This is a proof of concept and major WIP. Don't expect anything

Convert PCREs to vim expressions.

Vim/Neovim use their own flavour of regular expressions. This is a lua script to convert sane PCREs to Vim's version.

## Comparison

(Comparison table assuming `magic` option in Vim)

| vim character | PCRE Character | Vim                                | PCRE                             |
|---------------|----------------|------------------------------------|----------------------------------|
| .             | .              | A single character                 | A single character               |
| *             | *              | 0 or more of the preceding item    | 0 or more of the preceding item  |
| \+            | +              | 1 or more of the preceding item    | 1 or more of the preceding item  |
| \?            | ?              | 0 or 1 of the preceding item       | 0 or 1 of the preceding item     |
| \=            | .............. | 0 or 1 of the preceding item       | ................................ |

## Design

1. Code is in lua
2. Each pattern item should have a `magic` and `nomagic` attribute so we can convert for `magic` and `nomagic` variants. Most of the time they won't differ but let's be thorough.

i.e. (pseudocode)

```
let star = {
    magic: "*",
    nomagic: "\*"
}
```


## References


`:help perl-patterns`

`:help pattern.txt`

https://github.com/othree/eregex.vim

https://github.com/neovim/neovim/issues/3208#issuecomment-250898112

This comment in particular

> If someone writes a converter that parses pcre style expressions and returns vim-compatible expressions, and vice versa, for some subset of each, that might be worth including eventually. Someone needs to do it though.

/* vim: set nospell: */
