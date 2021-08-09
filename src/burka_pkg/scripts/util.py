import math
import numpy as np

def magnitude(vec):
    return np.linalg.norm(vec)
    
def arr_to_matrix(arr):
    size = int(len(arr)/3)
    side = int(math.sqrt(size))
    if (side*side) != size:
        print("Array len NOT perfect square. Side: {} Size: {}".format(side, size))
        return []
    mat = np.zeros(shape=(side, side, 3))
    for y in range(side):
        for x in range(side):
            x_val = arr[3*(y*side+x)]
            y_val = arr[3*(y*side+x)+1]
            z_val = arr[3*(y*side+x)+2]
            mat[y][x] = [x_val, y_val, z_val]
    return mat