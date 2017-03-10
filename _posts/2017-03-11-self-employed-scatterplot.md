---
layout: post
title: "A super quick weighted scatterplot about self-employment in R and ggplot2"
---

```r
library(ggplot2)
library(readr)
library(ggthemes)

# Load new batch of annotated data
df <- read_csv("~/Github/interactive-journalism-module/week5/exercise/data_annotated.csv")

# Color now depends on assigned category
colors <- ggplot(df, aes(x = Mean, y = Degrees, size = Number, fill=Category)) +
  geom_point(shape=21) +
  scale_size_area(max_size = 15) +
  scale_x_continuous(breaks = seq(0, 70000, 10000)) +
  scale_y_continuous(labels = scales::percent)

# More annotations
labels <- colors +
  annotate("text", x = 29000, y = .05, label = "Construction and building") +
  annotate("text", x = 12000, y = .56, label = "Education") +
  annotate("text", x = 46000, y = .75, label = "Health sector") +
  annotate("text", x = 10000, y = .16, label = "Hairdressers") +
  annotate("text", x = 12000, y = .39, label = "Sports and recreation") +
  annotate("text", x = 20000, y = .7, label = "Arts") +
  annotate("text", x = 40000, y = .35, label = "Real estate") +
  annotate("text", x = 14000, y = .07, label = "Taxis") +
  annotate("text", x = 35000, y = .66, label = "IT and programming") +
  annotate("text", x = 50000, y = .62, label = "Consultancies") +
  annotate("text", x = 18000, y = .24, label = "Retail") +
  annotate("text", x = 58000, y = .77, label = "Legal and accounting")

# Playing with some themes
# And display plot
labels + theme_minimal()
```
