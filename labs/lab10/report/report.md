---
## Front matter
title: "Отчёт по лабораторной работе №10"
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

Приобрести навыки написания программ для работы с файлами.

# Задание

В ходе данной работы мне предстоит познакомиться с правами доступа к файлам, поработаю с файлами средствами NASM, а также напишу собственную программу для записи сообщения в файл.

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

Создаём каталог для программ лабораторной работы № 10, переходим в него и создаём файлы lab10-1.asm, readme-1.txt и readme-2.txt: (рис. [-@fig:001]).

![Создание файлов в новом каталоге](image/1.jpg){#fig:001 width=70%}

Вводим в файл lab10-1.asm текст программы из листинга 10.1: (рис. [-@fig:002]).

![Ввод текста программы из листинга в файл](image/2.jpg){#fig:002 width=70%}

Создаём исполняемый файл и проверяем его работу.: (рис. [-@fig:003]).

![Запуск программы](image/3.jpg){#fig:003 width=70%}

С помощью команды chmod изменяем права доступа к исполняемому файлу lab10-1, запретив его выполнение. Выполнить файл не получается, так как мы запретили запускать его для себя (владельца): (рис. [-@fig:004]).

![Запрет выполнения файла](image/4.jpg){#fig:004 width=70%}

С помощью команды chmod изменяем права доступа к файлу lab10-1.asm с исходным текстом программы, добавив права на исполнение. Выполнить его на этот раз получается, так как новый файл обладает другими разрешениями: (рис. [-@fig:005]).

![Снятие запрета выполенения файла](image/5.jpg){#fig:005 width=70%}

В соответствии с вариантом в таблице 10.4 предоставляем права доступа к файлу readme-1.txt представленные в символьном виде. Наш вариант - 11: (рис. [-@fig:006]).

![Предоставление прав доступа к файлу в символьном виде](image/6.jpg){#fig:006 width=70%}

Проделываем то же самое к файлу readme-2.txt, но уже в двоичном виде: (рис. [-@fig:007]).

![Предоставление прав доступа к файлу в двоичном виде](image/7.jpg){#fig:007 width=70%}

Выполняем задания для самомстоятельной работы. Напишем программу, работающую по заданному алгоритму: (рис. [-@fig:008]).

![Ввод текста программы](image/8.jpg){#fig:008 width=70%}

Запускаем файл и проверяем правильность его работы: (рис. [-@fig:009]).

![Запуск файла](image/9.jpg){#fig:009 width=70%}

# Выводы

В ходе данной работы я приобрёл навыки написания программ для работы с файлами. Я также написал собственную программу для записи сообщения в файл.

# Список литературы{.unnumbered}

::: {#refs}
:::
