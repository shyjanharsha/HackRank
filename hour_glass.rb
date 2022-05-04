# arr = [
#     [1,1,1,0,0,0],
#     [0,1,0,0,0,0],
#     [1,1,1,0,0,0],
#     [0,9,2,-4,-4,0],
#     [0,0,0,-2,0,0],
#     [0,0,-1,-2,-4,0]
# ]

arr = [
    [-1, -1, 0, -9, -2, -2],
    [-2, -1, -6, -8, -2, -5],
    [-1, -1, -1, -2, -3, -4],
    [-1, -9, -2, -4, -4, -5],
    [-7, -3, -3, -2, -9, -9],
    [-1, -3, -1, -2, -4, -5]
]

max_col = 6
max_row = 6

hr_max_col = 3
hr_max_row = 3

m_sum = nil

# For every row, find the hour glass
(0..max_row).each do |row|
    break if row + 2 >= max_row

    # for every col, find the hour glass sum
    (0..max_col).each do |col|

        to_go = hr_max_col + col - 1
        break if to_go >= max_col
        h_sum = 0

        #  1st and last row of hour glass
        (col..to_go).each do |col_index|
            h_sum += arr[row][col_index]
            h_sum += arr[row + 2][col_index]
        end

        # middle hour glass value
        h_sum += arr[row+1][col+1]

        m_sum = h_sum if m_sum == nil
        m_sum = m_sum > h_sum ? m_sum : h_sum
    end
end

puts "m_sum: #{m_sum}"
