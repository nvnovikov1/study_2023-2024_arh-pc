---
## Front matter
title: "Отчет по лабораторной работе №5"
subtitle: "Дисциплина: архитектура компьютера"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# Задание

1. Основы работы с Midnight Commander
2. Структура программы на языка ассемблера NASM
3. Подключение внешнего файла

# Теоретическое введение

Midnight Commander (или просто mc) — это программа, которая позволяет просматривать
структуру каталогов и выполнять основные операции по управлению файловой системой,
т.е. mc является файловым менеджером. Midnight Commander позволяет сделать работу с
файлами более удобной и наглядной.
Программа на языке ассемблера NASM, как правило, состоит из трёх секций: секция кода
программы (SECTION .text), секция инициированных (известных во время компиляции)
данных (SECTION .data) и секция неинициализированных данных (тех, под которые во
время компиляции только отводится память, а значение присваивается в ходе выполнения
программы) (SECTION .bss).

# Выполнение лабораторной работы

Открываю Midnight Commander с помощью команды mc. (рис. [-@fig:fig1]).

![Открытие Midnight Commander](/home/nvnovikov1/Pictures/1.png){#fig:fig1 width=70%}

Пользуясь клавишами вверх, вниз и enter перехожу в каталог ~/work/study/'Архитектура компьютеров'/arch-pc/labs/lab05, созданный при выполнении прошлой лабораторной работы.(рис. [-@fig:fig2]).

![Переход в каталог](/home/nvnovikov1/Pictures/2.png){#fig:fig2 width=70%}

Пользуясь строкой ввода и командой touch создаю файл lab5-1.asm.
С помощью функционвльной клавиши F4 открываю файл lab05-1.asm для редактирования во встроенном редакторе.(рис. [-@fig:fig3]).

![Открытие редактора](/home/nvnovikov1/Pictures/3.png){#fig:fig3 width=70%}

Ввожу текст программы из листинга 5.1, сохраняю изменения и закрываю файл. (рис. [-@fig:fig4]).

![Ввод текста](/home/nvnovikov1/Pictures/4.png){#fig:fig4 width=70%}

Далее оттранслирую текст программы lab5-1.asm в объектный файл, выполняю компоновку объектного файла и запускаю получившийся исполняемый файл. Ввожу своё ФИО.(рис. [-@fig:fig5]).

![Запуск файла](/home/nvnovikov1/Pictures/5.png){#fig:fig5 width=70%}

## Подключение внешнего файла

Скачиваю файл in_out.asm со страницы курса в ТУИС.
Копирую скаченный файл в директорию lab05.
Cоздаю копию файла lab5-1.asm с именем lab5-2.asm.
Исправляю текст программы в файле lab5-2.asm с использованием подпрограмм из внешнего файла in_out.asm. Далее создаю исполняемый файл и проверяю его работу.(рис. [-@fig:fig6]).(рис. [-@fig:fig7]).

![Исправление файла](/home/nvnovikov1/Pictures/6.png){#fig:fig6 width=70%}
![Создание исполняемого файла](/home/nvnovikov1/Pictures/7.png){#fig:fig7 width=70%}


#  Задание для самостоятельной работы

Создаю копию файла lab5-1.asm с названием labcopy.asm.
Далее редактирую файл labcopy.asm так, чтобы она выводила то, что вводит пользователь.(рис. [-@fig:fig8]).

![Редактирование программы](/home/nvnovikov1/Pictures/8.png){#fig:fig8 width=70%}

Создаю объектный и исполняемый файлы и запускаю полученную программу. Ввожу свою фамилию и программа выводит мне её обратно.(рис. [-@fig:fig9]).

![Проверка программы](/home/nvnovikov1/Pictures/9.png){#fig:fig9 width=70%}

После этого созадю другую компию файла lab5-2.asm и называю его labcopy2.asm.
Также редактирую файл чтобы он выводил строку, введённую пользователем.(рис. [-@fig:fig10]).

![Редактирование нового файла](/home/nvnovikov1/Pictures/10.png){#fig:fig10 width=70%}

После создаю объекстный и исполняемый файлы для labcopy2.asm и запускаю эту программу. Также ввожу свою фамилию и получаю её обратно.(рис. [-@fig:fig11]).

![Проверка работы программы](/home/nvnovikov1/Pictures/11.png){#fig:fig11 width=70%}


# Выводы

После выполнения данной лабораторной работы я научился навыкам работы в Midnight Commnader и основе инструкция ассемблера mov и int. 
