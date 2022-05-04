arr = [1,6, 4, 3, 2]

def reverseArray(a)
    reversed = []
    position = a.length-1
    puts position
    while position >= 0
        reversed << a[position]
        position = position-1
    end
    return reversed
end

puts reverseArray(arr)