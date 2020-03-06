check:
	luacheck ./src
executable:
	luastatic ./src/main.lua /usr/lib/x86_64-linux-gnu/liblua5.2.a -I/usr/include/lua5.2
test:
	@find tests/ -type f | xargs -L1 lua

build: check test

