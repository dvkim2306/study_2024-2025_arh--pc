---
## Front matter
title: "Отчёт по лабораторной работе №2"
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

Цель работы – изучении идеологии и применение средств контроля версий, а
также приобретение практических навыков по работе с системой git.

# Задание

При выполнении лабораторной работы необходимо получить базовые
навыки работы с GitHub.

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

Создаём учётную запись на сайте https://github.com/ и заполняем основные
данные (рис. [-@fig:001]):

![Учётная запись на GitHub](image/1.jpg){#fig:001 width=70%}

Сначала сделаем предварительную конфигурацию git. Открываем терминал и вводим следующие команды, указав имя и email владельца репозитория (рис. [-@fig:002]):

![Предварительная конфигурация git](image/2.jpg){#fig:002 width=70%}

Настроим UTF-8 в выводе сообщений git. Зададим имя начальной ветки (будем называть её master) (рис. [-@fig:003]):

![Настройка UTF-8 и задача имени начальной ветки](image/3.jpg){#fig:003 width=70%}

Параметры autocrlf и safecrlf (рис. [-@fig:004]):

![Настройка параметров](image/4.jpg){#fig:004 width=70%}

Для последующей идентификации пользователя на сервере репозиториев необходимо сгенерировать пару ключей (приватный и открытый) (рис. [-@fig:005]):

![Генерация ключей](image/5.jpg){#fig:005 width=70%}

Открываем терминал и создаём каталог для предмета «Архитектура компьютера» (рис. [-@fig:006]):

![Создание каталога](image/6.jpg){#fig:006 width=70%}

Клонируем созданный репозиторий (рис. [-@fig:007]):

![Клонирование созданного репозитория](image/7.jpg){#fig:007 width=70%}

Переходим в каталог курса и удаляем лишние файлы (рис. [-@fig:008]):

![Удаление лишних файлов](image/8.jpg){#fig:008 width=70%}

Создаём необходимые каталоги (рис. [-@fig:009]):

![Создание необходимых каталогов](image/9.jpg){#fig:009 width=70%}

Отправляем файлы на сервер (рис. [-@fig:010]):

![Отправка файлов на сервер](image/10.jpg){#fig:010 width=70%}

Выполним задания для самостоятельной работы. Создаём отчет по выполнению лабораторной работы в соответствующем каталоге рабочего пространства (labs>lab02>report) (рис. [-@fig:011]):

![Создание каталогов](image/11.jpg){#fig:011 width=70%}

Копируем отчеты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства (рис. [-@fig:012]):

![Копирование отчетов](image/12.jpg){#fig:012 width=70%}

Загружаем файлы на github (рис. [-@fig:013]):

![Загрузка файлов на github](image/13.jpg){#fig:013 width=70%}

# Выводы

При выполнении данной работы я развил свои практические навыки работой с системой Git. Я изучил основные принципы контроля версий и получил практический опыт работы с инструментами Git. В ходе этой лабораторной работы я регистрировался на платформе GitHub, проводил конфигурацию системы, создавал SSH-ключ, ознакомился с основными командами git и научился загружать файлы в созданный репозиторий через терминал.

# Список литературы{.unnumbered}

::: {#refs}
:::
