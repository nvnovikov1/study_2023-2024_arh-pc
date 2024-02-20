---
## Front matter
title: "Отчет по выполнению лабораторной работы №8"
subtitle: "Дисциплина: архитектура компьютеров"
author: "Новиков Никита Владимирович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# Задание
1. Реализация циклов в NASM
2. Обработка аргументов командной строки

# Выполнение лабораторной работы

## Реализация циклов в NASM

Создаю каталог lab08, перехожу в него и создаю файл lab8-1.asm (рис. [-@fig:001]).

![Создание каталога и файла](image/1.png){#fig:001 width=70%}

Ввожу в файл текст программы из листинга 8.1.(рис. [-@fig:002]).

![Ввод программы из листинга 8.1](image/2.png){#fig:002 width=70%}

Создаю исполняемый файл и проверяю его работу.(рис. [-@fig:003]).

![Проверка работы файла](image/3.png){#fig:003 width=70%}

Далее изменяю текст программы, измененив значение регистра ecx в цикле.(рис. [-@fig:004]).

![Изменение файла](image/4.png){#fig:004 width=70%}

Создаю исполняемый файл и проверяю его работу.(рис. [-@fig:005]).

![Проверка работы файла](image/5.png){#fig:005 width=70%}

В данном случае число проходов цикла не соответствует значению N.

Вношу изменения в текст программы, добавив команды push и pop.(рис. [-@fig:006]).

![Внесение изменений в текст программы](image/6.png){#fig:006 width=70%}

Создаю исполняемый файл и запускаю его.(рис. [-@fig:007]).

![Запуск программы](image/7.png){#fig:007 width=70%}

В данном случае число проходов цикла соответствует значению N.

## Обработка аргументов командной строки 

Создаю файл lab8-2.asm и проверяю его создание.(рис. [-@fig:008]).

![Создание файла lab8-2.asm](image/8.png){#fig:008 width=70%}

Ввожу в этот файл программу из листинга 8.2.(рис. [-@fig:009]).

![Ввод программы из листинга 8.2](image/9.png){#fig:009 width=70%}

Создаю исполняемый файл и запускаю его, указав аргументы.(рис. [-@fig:010]).

![Запуск программы](image/10.png){#fig:010 width=70%}

Программа обработала 3 аргумента.

Создаю файл lab8-3.asm и ввожу в него программу из листинга 8.3.(рис. [-@fig:011]).

![Ввод программы из листинга 8.3](image/11.png){#fig:011 width=70%}

Созадю исполняемый файл и запускаю его, указав аргументы.(рис. [-@fig:012]).

![Проверка работы файла](image/12.png){#fig:012 width=70%}

Программа работает.

Теперь изменяю текст программы из листинга 8.3 так, чтобы она вычисляла произведение агрументов каждой строки.(рис. [-@fig:013]).

![Изменение текста листинга 8.3](image/13.png){#fig:013 width=70%}

Создаю исполняемый файл и запускаю его, указав аргументы.(рис. [-@fig:014]).

![Проверка работы программы](image/14.png){#fig:014 width=70%}



#Задания для самостоятельной работы

Создаю файл test.asm.(рис. [-@fig:015]).

![Написание программы для самостоятельной работы](image/15.png){#fig:015 width=70%}

Начинаю написание программы, которая будет вычислять сумму значений f(x)=3(10+x).(вариант 20).(рис. [-@fig:016]).

![Написание программы для самостоятельной работы](image/16.png){#fig:016 width=70%}

Создаю исполняемый файл и запускаю его, указав агрументы.(рис. [-@fig:017]).

![Запуск программы](image/17.png){#fig:017 width=70%}

Программы работает.



# Выводы

После выполнения данной лабораторной работы я приобрел навыки написание программ с использованием циклов и обработкой агрументов командной строки

