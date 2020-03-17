library(ggplot2)
library(datos)
library(here)
library(hrbrthemes)


#-------------------------------------------------------------------
# Sección ¿Qué hay detrás de un gráfico?
#-------------------------------------------------------------------

text_size <-16   # tamaño base del texto
margin_size <- text_size/2  #de los margenes

# Guardamos el gráfico en el objeto pTheme_final
pTheme_final <- ggplot(data=gapminder, mapping=aes(x= gdpPercap, y= lifeExp))+
  geom_point(aes(color=continent),size=3,alpha=0.6)+
  geom_smooth(method = 'gam', col = "#2c204d", size = 0.7,
              fill = "gray60", alpha = 0.2)+
  scale_x_log10(labels= scales::dollar)+
  scale_color_manual(values= c("#41b6a6", "#f6e37c","#f5a26b","#51b8df","#713580"), labels= c("Africa", "America", "Asia","Europa", "Oceanía"))+
  labs(x="Ingreso (PBI) Per Capita", y="Esperanza de vida en años",
       title ="Crecimiento económico y esperanza de vida", subtitle ="Los puntos se representan por año-país" , caption = "DataSource: Gapminder- Link: https://www.gapminder.org.", color= '', fill="Población")+
  guides(color = guide_legend(override.aes = list(size = 5)))+
  theme_light()+
  theme(legend.position="bottom", legend.key= element_rect(fill='NA'),
        legend.text= element_text(color="#2c204d", 
                                  size= text_size), 
        legend.justification = "center",
        
        plot.title = element_text(size=(text_size * 1.8),family ="Garamond",    
                                  hjust = 0.5,vjust = 1,
                                  colour = "#2c204d", #
                                  face = 'bold', 
                                  margin = margin(b = margin_size * 1.2)),
        plot.subtitle = element_text(size = text_size * 1.3,
                                     family ="Garamond", hjust = 0.5, vjust = 1, 
                                     colour = "#2c204d",
                                     margin = margin(b = margin_size * 0.9)),
        plot.caption = element_text(size = 11,family ="Garamond",
                                    hjust = 1, vjust = 1,
                                    colour = "#2c204d", 
                                    face='bold',
                                    margin = margin(t = margin_size * 0.9)),
        panel.background = element_rect(fill = "white"),
        panel.grid.major = element_line(color = "gray90", size = 0.5),
        panel.grid.minor = element_line(color = "gray90", size = 0.25))
# llamamos al objeto pTheme_final
pTheme_final


#-------------------------------------------------------------------
# Sección Facetas
#-------------------------------------------------------------------
# facet_grid

p_facet <- ggplot(data=gapminder, mapping=aes(x= gdpPercap, y= lifeExp, color=continent))+
  geom_point(size=3,alpha=0.6)+
  geom_smooth(method = 'gam', col = "#2c204d", size = 0.7,
              fill = "gray60", alpha = 0.2)+
  scale_x_log10(labels= scales::dollar)+
  scale_color_manual(values= c("#41b6a6", "#f6e37c","#f5a26b","#51b8df","#713580"), labels= c("Africa", "America", "Asia","Europa", "Oceanía"))+
  labs(x="Ingreso (PBI) Per Capita", y="Esperanza de vida en años",
       title ="Crecimiento económico y esperanza de vida", subtitle ="Los puntos se representan por año-país" , caption = "DataSource: Gapminder- Link: https://www.gapminder.org.", color= '')+
  guides(color = guide_legend(override.aes = list(size = 5)))+
  theme_bw()+
  theme(legend.position="bottom", 
        plot.title = element_text(size=(text_size * 1.8),family ="Garamond",    
                                hjust = 0.5,vjust = 1,colour = "#2c204d", #
                                face = 'bold'))+
  facet_grid(~continent, scales="free")

p_facet

# Guardamos el gráfico
ggsave(here("grafico_facet.png"), height = 6, width = 8, units = "in", type='cairo')

#-------------------------------------------------------------------
# Sección Sistemas de coordenadas
#-------------------------------------------------------------------
# Cartesianas y polares

barchart <- ggplot(data = diamantes) +
  geom_bar(
    mapping = aes(x = corte, fill = corte),
    show.legend = FALSE,
    width = 1) +
  scale_fill_manual(values = c("#9ccfb1","#f5a26b","#e84052","#51b8df", "#41b6a6"))+
  theme_ipsum_tw()+
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)
barchart
barchart + coord_flip()
ggsave(here("grafico_barra4.png"), height = 4, width = 5, units = "in", type='cairo')

# coordenadas polares
barchart + coord_polar()
ggsave(here("grafico_polar4.png"), height = 4, width = 4, units = "in", type='cairo')

#-------------------------------------------------------------------
# Sección Función geom
#-------------------------------------------------------------------
ggsave(here("grafico_geom_blank.png"), height = 3, width = 4, units = "in", type='cairo')
library(iris)
library(hrbrthemes)
hrbrthemes::import_plex_sans()

p1 <- ggplot(iris, 
             mapping=aes(Species, Sepal.Width))

# función geom_point
p1 + geom_point() + theme_ipsum_ps()
ggsave(here("grafico_geom_point2.png"), height = 3, width = 4, units = "in", type='cairo')


# función geom_boxplot
p1 + geom_boxplot()+ theme_ipsum_ps()
ggsave(here("grafico_geom_boxplot2.png"), height = 3, width = 4, units = "in", type='cairo')

# función 
geom_violin
p1 + geom_violin()+ theme_ipsum_ps()
ggsave(here("grafico_geom_violin2.png"), height = 3, width = 4, units = "in", type='cairo')

#
bar <- ggplot(data = diamantes) +
  geom_bar(
    mapping = aes(x = corte, fill = corte),
    show.legend = FALSE,
    width = 1
  ) +
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()

#-------------------------------------------------------------------
# Sección Themes o Temas
#-------------------------------------------------------------------
#theme_bw
ptheme_bw <- ggplot(data = gapminder,mapping = aes(x = gdpPercap,y = lifeExp,color =            continent))+ 
  geom_point()+
  scale_color_manual(values = c("#41b6a6", "#f6e37c",   "#f5a26b","#51b8df","#713580"), labels = c("Africa", "América","Asia",  "Europa", "Oceanía"))+
  coord_cartesian()+
  scale_x_log10(labels= scales::dollar)+
  labs(x = "Ingreso (GDP) Per Cápita", y = "Esperanza de vida",
       title = "Crecimiento económico y esperanza de vida",
       subtitle = "Los puntos se representan por año-país",
       caption = "DataSource: Gapminder - Link: https://www.gapminder.org", color=" ")+
  guides(color = guide_legend(override.aes = list(size = 5)))+
  theme_bw()

ptheme_bw
# Guardamos el gráfico
ggsave(here("grafico_facet_bw.png"), height = 4, width = 6, units = "in", type='cairo')

#-----------------------------------------------------------
# theme_gray
pthemeGray <- ggplot(data = gapminder,mapping = aes(x = gdpPercap,y = lifeExp,color =            continent))+ 
  geom_point()+
  scale_color_manual(values = c("#41b6a6", "#f6e37c",   "#f5a26b","#51b8df","#713580"), labels = c("Africa", "América","Asia",  "Europa", "Oceanía"))+
  coord_cartesian()+
  scale_x_log10(labels= scales::dollar)+
  labs(x = "Ingreso (GDP) Per Cápita", y = "Esperanza de vida",
       title = "Crecimiento económico y esperanza de vida",
       subtitle = "Los puntos se representan por año-país",
       caption = "DataSource: Gapminder - Link: https://www.gapminder.org", color=" ")+
  guides(color = guide_legend(override.aes = list(size = 5)))+
  theme_gray()

pthemeGray
ggsave(here("grafico_facet4.png"), height = 4, width = 6, units = "in", type='cairo')

#---------------------------------------------------------------
# theme_dark
ptheme_dark <- ggplot(data = gapminder,mapping = aes(x = gdpPercap,y = lifeExp,color =            continent))+ 
  geom_point()+
  scale_color_manual(values = c("#41b6a6", "#f6e37c",   "#f5a26b","#51b8df","#713580"), labels = c("Africa", "América","Asia",  "Europa", "Oceanía"))+
  coord_cartesian()+
  scale_x_log10(labels= scales::dollar)+
  labs(x = "Ingreso (GDP) Per Cápita", y = "Esperanza de vida",
       title = "Crecimiento económico y esperanza de vida",
       subtitle = "Los puntos se representan por año-país",
       caption = "DataSource: Gapminder - Link: https://www.gapminder.org", color=" ")+
  guides(color = guide_legend(override.aes = list(size = 5)))+
  theme_dark()

theme_dark
ggsave(here("grafico_facet6.png"), height = 4, width = 6, units = "in", type='cairo')


