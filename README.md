

Visualización de datos en R con ggplot2
================

### WIDS2020

by Patricia A. Loto

-----

:spiral_calendar: Jueves 5 de marzo del 2020  
:alarm_clock:     15:30 - 17:30  
:hotel:           Universidad Tecnológica Nacional- Facultad Regional Córdoba- Maestro M. Lopez esq. Cruz Roja, Córdoba.

:writing_hand:    
:earth_americas:  [WIDS2020](https://http://metcba.org/)  

## Descripción

## ¿Este curso es para mí?
1.Tiene conocimientos básicos del lenguaje R o Python y quieres aprender especificamente sobre visualización de datos.
2.Quieres conocer cúales son los componentes visuales de un gráfico.
3.Quieres entender los principios básicos de la Grámatica de gráficos en capas y cómo son implementadas en ggplot.
4.Quieres conocer cuáles son los gráficos más comúnmente utilizados y cómo desarrollarlos con ggplot. 

## Antes del curso

- Trabajaremos con la versión más reciente de R y Rstudio, por lo que deberás traerlos instalados, así cómo a los paquetes que utilizaremos para el desarrollo del mismo.

### Instalación de R and RStudio en tu computadora portátil

- If you are running the software locally on your laptop, begin by installing R (<http://cloud.r-project.org>) and RStudio (<http://rstudio.com>). 
- Once the applications are installed, launch RStudio. Either type or copy and paste the following lines of code at R’s command prompt, located in the RStudio window named “Console”, and then hit return. In the code below, the <- arrow is made up of two keystrokes, first < and then the short dash or minus symbol, -.

``` R
my_packages <- c("tidyverse", "broom", "coefplot", "cowplot", "drat",
                 "gapminder", "GGally", "ggrepel", "ggridges",  
                 "graphlayouts", "gridExtra", "here", "interplot", "margins", 
                 "maps", "mapproj", "mapdata", "MASS", "naniar", "prismatic", 
                 "quantreg", "rlang", "scales", "socviz", "survey", "srvyr", 
                 "viridis", "viridisLite", "devtools", "ggforce", "ggraph", "sf")

install.packages(my_packages, repos = "http://cran.rstudio.com")

```
