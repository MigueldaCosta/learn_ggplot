# Inspect structure of japan
str(japan)

# Finish the code inside saveGIF
saveGIF({

  # Loop through all time points
  for (i in unique(japan$time)) {

    # Subset japan: data
    data <- subset(japan, time == i)

    # Finish the ggplot command
    p <- ggplot(data, aes(x = AGE, y = POP, fill = SEX, width = 1)) +
      coord_flip() +
      geom_bar(data = data[data$SEX == "Female",], stat = "identity") +
      geom_bar(data = data[data$SEX == "Male",], stat = "identity") +
      ggtitle(i)

    print(p)

  }

}, movie.name = "pyramid.gif", interval = 0.1)


# Vocab, gganimate and ggplot2 are available

# Update the static plot
p <- ggplot(Vocab, aes(x = education, y = vocabulary,
                       color = year, group = year,
                       frame = year, cumulative = TRUE)) +
    stat_smooth(method = "lm", se = FALSE, size = 3)

# Call gg_animate on p
x <- gg_animate(p, filename = "vocab.gif", interval = 1.0)
