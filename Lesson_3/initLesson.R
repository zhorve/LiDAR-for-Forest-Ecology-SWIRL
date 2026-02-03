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
course_name <- "LiDAR-for-Forest-Ecology-SWIRL/Lesson_3"

# Set working directory to the course folder
setwd(get_swirl_course_path(course_name))

# Confirm
cat("Working directory set to:\n", getwd(), "\n")


pkgs <- c("sf", "lidR", "terra", "png")

missing <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]

if (length(missing) > 0) {
  install.packages(missing)
}

library(sf)
library(lidR)
library(terra)
library(png)

VAI = function(Z){
  
  lad = LAD(Z, dz = 1, k = 0.5, z0 = 2)
  
  lai = sum(lad$lad, na.rm = T)
  
}
