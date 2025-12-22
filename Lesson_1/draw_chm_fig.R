img <- png::readPNG("Lesson_1/chm_fig.png")
plot(0:1, 0:1, type = "n", xlab = "", ylab = "", axes = FALSE)
rasterImage(img, 0, 0, 1, 1)

mtext(
  "Image source: https://www.neonscience.org/resources/learning-hub/tutorials/chm-dsm-dtm",
  side = 1,      # bottom
  line = 0.5,      # distance from plot
  cex  = 0.5
)
