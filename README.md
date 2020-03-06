# pcre-vim

Convert PCREs to vim expressions.

Vim/Neovim use their own flavour of regular expressions. This is a lua script to convert sane PCREs to Vim's version.

## Comparison

| Character | Vim                  |  PCRE              |
|-----------|----------------------|--------------------|
| .         | A single character   | A single character |



## References

https://github.com/neovim/neovim/issues/3208#issuecomment-250898112

This comment in particular

> If someone writes a converter that parses pcre style expressions and returns vim-compatible expressions, and vice versa, for some subset of each, that might be worth including eventually. Someone needs to do it though.
