# Circle Detection Using Hough Transform

This repository contains a MATLAB implementation for detecting circles in an image using the Hough Transform method. The code follows a series of steps including preprocessing, edge detection, and contour extraction to locate and visualize circles in a given noisy image.

## Table of Contents
- [Description](#description)
- [Requirements](#requirements)
- [Usage](#usage)
- [Steps in the Code](#steps-in-the-code)
- [License](#license)

## Description
This project demonstrates the process of circle detection in images by applying the **Hough Transform** method. The method first involves preprocessing the image to reduce noise, enhance features, and detect edges. Then, the Hough Transform is applied to detect circles based on their geometric properties. The detected circles are visualized on the original image.

### Main Features:
- **Noise Reduction**: A median filter is applied to each color channel to reduce noise.
- **Image Enhancement**: Gaussian blur and sharpness enhancement techniques are applied to improve the visibility of edges.
- **Edge Detection**: The Canny edge detector is used to identify edges in the image.
- **Circle Detection**: The Hough Transform is used to detect circles with a specified range of radii.
- **Visualization**: The detected circles are overlaid on the original image for visualization.

## Requirements
- MATLAB (version R2017b or later)
- Image Processing Toolbox (for functions like `imread`, `imfindcircles`, and `edge`)

## Usage
1. **Clone the repository**:
   ```bash
   git clone https://github.com/AliFarooq77/circle-detection.git
