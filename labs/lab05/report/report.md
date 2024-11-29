---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Ким Денис Вячеславович"

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
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
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

Приобрести практические навыки работы в Midnight Commander и освоить инструкции языка ассемблера mov и int.

# Задание

В ходе данной работы мне предстоит познакомиться с основами MC, инструкциями mov и int и писать программы для вывода данных на экран.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. [-@tbl:std-dir] приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно про Unix см. в [@tanenbaum_book_modern-os_ru; @robbins_book_bash_en; @zarrelli_book_mastering-bash_en; @newham_book_learning-bash_en].

# Выполнение лабораторной работы

Открываем Midnight Commander (рис. [-@fig:001]).

![Открытый Midnight Commander](image/1.jpg){#fig:001 width=70%}

Пользуясь клавишами ↑ , ↓ и Enter, переходим в каталог ~/work/arch-pc, созданный при выполнении лабораторной работы №4: (рис. [-@fig:002]).

![Переход в каталог ~/work/arch-pc](image/2.jpg){#fig:002 width=70%}

С помощью функциональной клавиши F7 создаём папку lab05: (рис. [-@fig:003]).

![Создание нового каталога](image/3.jpg){#fig:003 width=70%}

Переходим в него: (рис. [-@fig:004]).

![Переход в новый каталог](image/4.jpg){#fig:004 width=70%}

Пользуясь строкой ввода и командой touch, создаём файл lab5-1.asm. С помощью функциональной клавиши F4 открываем его для редактирования во встроенном редакторе: (рис. [-@fig:005]).

![Открытие созданного файла в редакторе](image/5.jpg){#fig:005 width=70%}

Вводим текст программы из листинга 5.1, сохраняем изменения и закрываем файл: (рис. [-@fig:006]).

![Ввод текста программы из листинга](image/6.jpg){#fig:006 width=70%}

С помощью функциональной клавиши F3 открываем файл lab5-1.asm для просмотра. Убеждаемся, что файл содержит текст программы: (рис. [-@fig:007]).

![Открытие файла для просмотра](image/7.jpg){#fig:007 width=70%}

Оттранслируем текст программы lab5-1.asm в объектный файл. Выполняем компоновку объектного файла и запускаем получившийся исполняемый файл. В появившееся поле вводим своё имя пользователя: (рис. [-@fig:008]).

![Запуск программы](image/8.jpg){#fig:008 width=70%}

С помощью функциональной клавиши F6 создаём копию файла lab5-1.asm с именем lab5-2.asm: (рис. [-@fig:009]).

![Создание копии файла](image/9.jpg){#fig:009 width=70%}

Исправляем текст программы в файле lab5-2.asm с использованием подпрограмм из внешнего файла in_out.asm в соответствии с листингом 5.2: (рис. [-@fig:010]).

![Исправление текста программы](image/10.jpg){#fig:010 width=70%}

В файле lab5-2.asm заменяем подпрограмму sprintLF на sprint. Создаём исполняемый файл и проверяем его работу. Заметим, что тексты вывелся уже не на новой строке: (рис. [-@fig:011]).

![Замена подпрограммы](image/11.jpg){#fig:011 width=70%}

Выполняем задания для самостоятельной работы. Создаём копию файла lab5-1.asm. Вносим изменения в программу, так чтобы она работала по заданному алгоритму: (рис. [-@fig:012]).

![Внос изменений](image/12.jpg){#fig:012 width=70%}

Запускаем исполняемый файл. На приглашение ввести текст вводим свою фамилию: (рис. [-@fig:013]).

![Запуск программы](image/13.jpg){#fig:013 width=70%}

Создаём копию файла lab5-2.asm. Исправляем текст программы с использованием подпрограмм из внешнего файла in_out.asm так, чтобы она работала по заданному алгоритму: (рис. [-@fig:014]).

![Внос изменений](image/14.jpg){#fig:014 width=70%}

Запускаем исполняемый файл и проверяем его работу: (рис. [-@fig:015]).

![Запуск программы](image/15.jpg){#fig:015 width=70%}

# Выводы

В ходе данной работы я приобрёл практические навыки работы в Midnight Commander и освоил инструкции языка ассемблера mov и int. Я также научился писать собственные программы для вывода данных на экран.

# Список литературы{.unnumbered}

::: {#refs}
:::
