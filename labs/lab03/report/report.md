---
## Front matter
title: "Отчёт по лабораторной работе №3"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Задание

В ходе выполнения лабораторной работы мне предстоит изучить базовые сведения о Markdown и познакомиться с процедурой оформления отчётов при помощи данного языка разметки.

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

Открываем терминал и переходим в каталог курса, сформированный при выполнении лабораторной работы (рис. [-@fig:001]):

![Переход в каталог курса](image/1.jpg){#fig:001 width=70%}

Обновляем локальный репозиторий, скачав изменения из удаленного репозитория (рис. [-@fig:002]):

![Обновление локального репозитория](image/photo_5251283327309177557_x.jpg){#fig:002 width=70%}

Переходим в каталог с шаблоном отчета по лабораторной работе № 3 (рис. [-@fig:003]):

![Переход в каталог с шаблоном отчета](image/photo_5251283327309177558_x.jpg){#fig:003 width=70%}

Проводим компиляцию шаблона с использованием Makefile (рис. [-@fig:004]):

![Компиляция шаблона](image/photo_5251283327309177539_x.jpg){#fig:004 width=70%}

Удаляем полученные файлы с использованием Makefile (рис. [-@fig:005]):

![Удаление файлов](image/photo_5251283327309177540_x.jpg){#fig:005 width=70%}

Открываем файл report.md c помощью любого текстового редактора, например gedit (рис. [-@fig:006]):

![Открытие файла report.md](image/photo_5251283327309177542_w.jpg){#fig:006 width=70%}

Заполняем отчет и компилируем его с использованием Makefile (рис. [-@fig:007]):

![Заполнение отчета](image/2.jpg){#fig:007 width=70%}

Загружаем файлы на Github (рис. [-@fig:008]):

![Загрузка файлов на Github](image/3.jpg){#fig:008 width=70%}

Приступаем к выполнению самостоятельной работы. В соответствующем каталоге делаем отчёт по лабораторной работе № 2 в формате Markdown (рис. [-@fig:009]):

![Выполнение отчета по лабораторной работе №2](image/4.jpg){#fig:009 width=70%}

Загружаем файлы на github (рис. [-@fig:010]):

![Загрузка файлов на github](image/5.jpg){#fig:010 width=70%}

# Выводы

При выполнении данной работы я освоил процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Список литературы{.unnumbered}

::: {#refs}
:::
