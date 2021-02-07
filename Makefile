lua_submodule = ./lua/src/lua

all : \
	$(lua_submodule)

$(lua_submodule) : 
	git submodule update --init lua
	cd lua && git checkout skynet
	cd lua/src && make generic MYCFLAGS="-g -DNO_STDATOMIC"

clean :
	cd lua/src && $(MAKE) clean

