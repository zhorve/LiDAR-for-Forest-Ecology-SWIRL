# LiDAR for Forest Ecology

This course introduces the fundamentals of **LiDAR analysis for forest ecology** using the **`lidR`** package in R.  
You will learn to work with airborne LiDAR point clouds to derive canopy height models, tree-level metrics, and forest structural diversity from the plot level to landscapes.

📦 **lidR package**: [https://github.com/r-lidar/lidR](https://github.com/r-lidar/lidR)

---

## Getting Started

Follow these steps to set up the course:

1. **Install R and RStudio**  
   - R: [https://cran.r-project.org/](https://cran.r-project.org/)  
   - RStudio: [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/)

2. **Install the `swirl` package** in R:  
   ```r
   install.packages("swirl")
   
3. **Install the course from GitHub**  
   In R or RStudio, run the following command:  
   ```r
   swirl::install_course_github("zhorve", "LiDAR-for-Forest-Ecology-SWIRL")

4. **Start SWIRL**  
   In R or RStudio, run the following command:  
   ```r
   swirl()
   
## Course Lessons

### Lesson 1: Introduction to LiDAR Point Clouds
- Learn the differences between a digital surface model, digital terrain model, and a canopy height model
- Create a CHM
- Build understanding of point classifications through building classification and removal for urban forests

---

### Lesson 2: Individual Tree Analysis
- Detect and segment individual trees using NEON AOP LiDAR data
- Derive tree-level biometrics such as tree height
- Map tree density and mean tree height across landscapes

---

### Lesson 3: Forest Structural Diversity
- Quantify forest structural diversity from point clouds and CHMs
- Explore the structural differences between forest edge and interior plots
- Create wall-to-wall maps of structural diversity

---

## Intended Audience
This course is designed for:
- Forest ecologists and managers
- Upper level undergraduate and graduate students
- Anyone interested in applying LiDAR to ecological questions

---

## Requirements
- R (≥ 4.2 recommended)
- RStudio
- Packages: `lidR`, `terra`, `sf`, `swirl`

---

## References & Resources
- `lidR` documentation: [https://github.com/r-lidar/lidR](https://github.com/r-lidar/lidR)
- NEON LiDAR data: [https://www.neonscience.org/data-products](https://www.neonscience.org/data-products)
- USGS 3DEP data: [https://www.usgs.gov/3d-elevation-program]
