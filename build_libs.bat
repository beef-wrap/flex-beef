clang -c -o flex.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall flex/flex.c
mkdir libs
move flex.lib libs