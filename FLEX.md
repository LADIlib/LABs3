# BMSTU flex programs 

## Wiki

[ru](https://ru.wikipedia.org/wiki/Flex_(%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80_%D0%BB%D0%B5%D0%BA%D1%81%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%B2))

[en](https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator))

## Installation

Use Linux package installers... depends on your distributive 

```bash
apt install flex
apt install gcc
apt install g++
```

## Compilation

`cd` to directory with your `lex.l` file

execute:
```bash
flex lex.l
gcc lab1.yy.c -lfl
./a.out
```

`flex lex.l`- generates C code file named `lab1.yy.c`

`gcc lab1.yy.c -lfl` - compiles C code file to `a.out` with additional library named `libfl.so`
