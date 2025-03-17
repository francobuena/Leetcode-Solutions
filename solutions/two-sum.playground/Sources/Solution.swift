import Foundation

/**
 FLOOD FILL
 You are given an image represented by an m x n grid of integers image, where image[i][j] represents the pixel value of the image. You are also given three integers sr, sc, and color. Your task is to perform a flood fill on the image starting from the pixel image[sr][sc].

 To perform a flood fill:

 Begin with the starting pixel and change its color to color.
 Perform the same process for each pixel that is directly adjacent (pixels that share a side with the original pixel, either horizontally or vertically) and shares the same color as the starting pixel.
 Keep repeating this process by checking neighboring pixels of the updated pixels and modifying their color if it matches the original color of the starting pixel.
 The process stops when there are no more adjacent pixels of the original color to update.
 Return the modified image after performing the flood fill.
 */

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
    if image[sr][sc] == color { return image }
    var temp = image
    fill(&temp, sr, sc, image[sr][sc], color)
    return temp

}
    
func fill(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ target: Int, _ color: Int) {
    guard sr >= 0 && sc >= 0 && sr < image.count && sc < image[0].count && target == image[sr][sc] else { return }
    
    image[sr][sc] = color
    
    fill(&image, sr + 1, sc, target, color)
    fill(&image, sr - 1, sc, target, color)
    fill(&image, sr, sc + 1, target, color)
    fill(&image, sr, sc - 1, target, color)
}
