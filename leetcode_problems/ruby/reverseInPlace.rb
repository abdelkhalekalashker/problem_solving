def reverseInPlace(array)
    left = 0
    right = array.length - 1

    while left < right
        array[left] , array[right] = array[right] , array[left]
        left += 1
        right -= 1
    end


end