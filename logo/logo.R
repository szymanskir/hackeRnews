library(ggplot2)
library(hexSticker)
library(showtext)
library(grid)
library(dplyr)

font_add_google(name = "Orbitron", family = 'pixel')

x <- c(3:4, 2:5, rep(1:6, times=4))
y <- c(rep(1, times=2), rep(2, times=4), rep(3:6, each=6))

createPlot <- function(seed) {
  set.seed(seed)
  df <- data.frame(x = x, y = y, label = sample(0:1, 30, replace = TRUE), transparent = sample(c(rep(0, 2), 1), 30, replace = TRUE))
  
  p <- ggplot(data = df, aes(x =x, y=y)) +  
    geom_text(data = df %>% filter(transparent == 0), 
              aes(label=label, family='pixel', fontface='bold'), colour="white", size = 12, alpha = 0.3) +
    geom_text(data = df %>% filter(transparent == 1), 
              aes(label=label, family='pixel', fontface='bold'), colour="white", size = 12)
  
  hacke <- grobTree(textGrob("hacke", x=0.04,  y=0.93, hjust=0,
                            gp=gpar(col="white", fontsize=45, fontfamily='pixel', fontface='bold')))
  
  R <- grobTree(textGrob("R", x=0.45,  y=0.929, hjust=0,
                             gp=gpar(col="white", fontsize=70, fontfamily='pixel', fontface='bold')))
  
  news <- grobTree(textGrob("news", x=0.6,  y=0.93, hjust=0,
                             gp=gpar(col="white", fontsize=45, fontfamily='pixel', fontface='bold')))
  
  p <- p + theme_void() + 
    theme_transparent() + 
    annotation_custom(hacke) +
    annotation_custom(R) + 
    annotation_custom(news) + 
    ylim(0, 7.5)
  
  sticker(p, package = "", s_x=0.99, s_y=.7, s_width=1.7, s_height=1.6, h_fill='#FF6600', h_color='#FFD9BF',
          filename=paste0("./logo", seed, ".png"))
}

# lapply(1:15, function(x) createPlot(x))
createPlot(14)
