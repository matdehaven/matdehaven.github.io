library(ggplot2)
library(svglite)

## Colors
y1_color <- "#F2AD00"
y2_color <- "#F98400"
y3_color <- "#5BBCD6"


##

df <- data.frame(x = seq(0, 0.975 * 2 * pi, length.out = 1000))

df$y1 <- cos(df$x) + df$x + 1.5
df$y2 <- df$y1 + 3 * sin(df$x ^ (3 / 2))

p <-
  df |>
  ggplot(aes(
    x = x
  )) +
  geom_area(aes(y = y1, fill = "y1")) +
  geom_ribbon(
    aes(
      xmin = x,
      xmax = x,
      ymin = y1,
      ymax = +Inf
    ),
    fill = y3_color
  ) +
  geom_line(aes(y = y2), color = y2_color, linewidth = 1) +
  scale_x_continuous(expand = c(0, 0), limits = c(0, 0.975 * 2 * pi)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 1.05 * max(df$y2))) +
  scale_fill_manual(values = c(
    y1 = y1_color,
    y2 = y2_color
  )) +
  theme_void() +
  theme(
    legend.position = "none",
    aspect.ratio = 1,
    plot.margin = margin(0, 0, 0, 0),
    axis.ticks.length = unit(0, "pt")
  )

p

## Save one as a png with 32 x 32 pixels
ggsave(
  "./static-content/logo/logo-32x32.png",
  p,
  width = 1,
  height = 1,
  scale = 1,
  dpi = 32,
  bg = "transparent"
)

## Save one as a png with 180 x 180 pixels
ggsave(
  "./static-content/logo/logo-180x180.png",
  p,
  width = 1,
  height = 1,
  dpi = 180,
  bg = "transparent"
)


## Save one as SVG
ggsave(
  "./static-content/logo/logo.svg",
  p,
  width = 0.5,
  height = 0.5,
  scale = 1,
  bg = "transparent"
)
