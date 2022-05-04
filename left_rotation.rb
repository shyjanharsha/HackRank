# d determine the number of times an array should be rotated
d = 3
# initialize array 
array = [1,2,3,4,5]
# output will be [5,4,3,2,1]
# check the array count
# puts arr.count

# ways to find the last element of the array in ruby 
# puts arr[arr.length-1]
# puts arr.last
# puts arr[-1]
def rotLeft(a, d)
   d.times { |x|
     new_last_value = a.shift
     puts new_last_value
     a.push new_last_value 
   }
   return a
end


puts rotLeft(array, d)
