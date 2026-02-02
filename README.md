# LiDAR for Forest Ecology

This course introduces the fundamentals of **LiDAR analysis for forest ecology** using the **`lidR`** package in R.  
You will learn to work with airborne LiDAR point clouds to derive terrain models, canopy structure, tree-level metrics, and forest structural diversity.

📦 **lidR package**: [https://github.com/r-lidar/lidR](https://github.com/r-lidar/lidR)

---

## Course Lessons

### Lesson 1: Introduction to LiDAR Point Clouds
- Load and inspect LiDAR point clouds (`.las`/`.laz`)
- Digital Surface Model (DSM) creation
- Digital Terrain Model (DTM) creation
- Canopy Height Model (CHM) generation
- Building classification and removal for urban forests

---

### Lesson 2: Individual Tree Analysis
- Normalize point cloud heights above ground
- Filter high-vegetation points
- Detect individual trees using local maxima
- Segment individual trees and derive tree-level metrics
- Map tree density and mean tree height across landscapes

---

### Lesson 3: Forest Structural Diversity
- Quantify forest structural diversity from CHMs
- Compare forest edges vs. interior plots
- Summarize LiDAR metrics by plot
- Create wall-to-wall maps of structural diversity

---

## Intended Audience
This course is designed for:
- Forest ecologists
- Remote sensing scientists
- Graduate students and researchers
- Anyone interested in applying LiDAR to ecological questions

---

## Requirements
- R (≥ 4.2 recommended)
- RStudio
- Packages: `lidR`, `terra`, `sf`, `ggplot2`

---

## References & Resources
- `lidR` documentation: [https://github.com/r-lidar/lidR](https://github.com/r-lidar/lidR)
- Dalponte & Coomes (2016) tree segmentation algorithm: https://doi.org/10.1111/2041-210X.12575
- NEON LiDAR data: [https://www.neonscience.org/data-products](https://www.neonscience.org/data-products)
