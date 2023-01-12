# problem link
# https://leetcode.com/problems/flood-fill/?envType=study-plan&id=level-1

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)    
    color = image[sr][sc]
    image[sr][sc] = new_color
    return image if color == new_color #if no painting req
    flood_fill(image, sr-1, sc, new_color) if sr > 0 and image[sr-1][sc] == color
    flood_fill(image, sr, sc-1, new_color) if sc > 0 and image[sr][sc-1] == color
    flood_fill(image, sr+1, sc, new_color) if sr+1 < image.size and image[sr+1][sc] == color
    flood_fill(image, sr, sc+1, new_color) if sc+1 < image[0].size and image[sr][sc+1] == color
    return image
end