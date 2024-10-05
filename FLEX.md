# Как скомпилить и запустить flex программы?

## Wiki про flex

[ru](https://ru.wikipedia.org/wiki/Flex_(%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80_%D0%BB%D0%B5%D0%BA%D1%81%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D1%85_%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%82%D0%BE%D1%80%D0%BE%D0%B2))

[en](https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator))

## Установка

Установите эти пакеты через менеджер в вашем дистрибутиве (apt в ubuntu)

```bash
apt install flex
apt install gcc
apt install g++
```

## Компиляция

`cd` в папку, где лежит нужный `lex.l` файл

выполните эти команды в терминале:
```bash
flex lex.l
gcc lex.yy.c -lfl
./a.out
```

`flex lex.l`- создаёт файл C кода под названием `lex.yy.c`

`gcc lex.yy.c -lfl` - компилит C код в исполняемый файл `a.out` с подключением библиотеки `libfl.so`
