img <- png::readPNG("plots_fig.png")
plot(0:1, 0:1, type = "n", xlab = "", ylab = "", axes = FALSE)
rasterImage(img, 0, 0, 1, 1)

# if needed below

# mtext(
#   "Image source: LaRue et al. 2019; DOI: https://doi.org/10.1088/1748-9326/ab49bb",
#   side = 1,      # bottom
#   line = 0.5,      # distance from plot
#   cex  = 0.5
# )
