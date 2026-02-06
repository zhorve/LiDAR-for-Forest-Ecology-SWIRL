# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

# Load swirl package
library(swirl)

# Function to find the path to the current swirl course
get_swirl_course_path <- function(course_name) {
  # Get the base path where swirl courses are installed
  base_path <- system.file("Courses", package = "swirl")
  
  # Full path to the course
  course_path <- file.path(base_path, course_name)
  
  # Check if the folder exists
  if (!dir.exists(course_path)) {
    stop(paste("Course folder not found:", course_path))
  }
  
  return(course_path)
}

# Replace with your course folder name
course_name <- "LiDAR-for-Forest-Ecology-SWIRL/Lesson_2"

# Set working directory to the course folder
setwd(get_swirl_course_path(course_name))

# Confirm
cat("Working directory set to:\n", getwd(), "\n")

# The lesson requires the raster and lidR packages. This checks and installs
# the packages in cass the learner does not have them. 

pkgs <- c("sf", "lidR", "terra")

missing <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]

if (length(missing) > 0) {
  install.packages(missing)
}

# Additionally, this lesson will have some plotting tasks. Here we will pre-load
# the color palette to make things more simple. 

library(lidR)
library(sf)
library(terra)

# Function to highlight a single tree in a segmented LAS
highlight_tree <- function(seg, treeid) {
  
  # 1. Create a numeric flag: 1 = target tree, 0 = others
  plotCol <- ifelse(seg@data$treeID == treeid, 1L, 0L)
  
  # 2. Add as a LAS attribute
  seg <- add_attribute(seg, plotCol, "plotCol")
  
  # 3. Define color palette
  cols <- c("grey70", "red")
  
  # 4. Plot
  plot(
    seg,
    color        = "plotCol",   # the new attribute
    pal = cols,         # map 0 -> grey, 1 -> red
    bg           = "white",
    size         = 4
  )
  
}
