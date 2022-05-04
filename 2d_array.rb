n=2

arr = [
    [1, 0, 5],
    [1, 1, 7],
    [1, 0, 3],
    [2, 1, 0],
    [2, 1, 1],
]

def solution(n, queries)
    last_answer = 0
    answer_array = []
    e_array = []
    n.times { |e| e_array << [] }

    # 1. Loop through the given queries

    queries.each do |q|
        # q[0] -> query type
        # q[1] -> x
        # q[2] -> y
        idx = (q[1] ^ last_answer) % n
        if q[0] == 1
            e_array[idx] << q[2]
        elsif q[0] == 2
            last_answer = e_array[idx][q[2] % e_array[idx].count]
            answer_array << last_answer
            puts last_answer

            # answer_array << q[1]
        end

        # puts e_array
        # FIND THE QUERY TYPE
        #  IF QUERY TYPE is 1, then append y to e_array[idx]
        # else if query type is 2, find idx and find last answer and append to answer array
    end

    answer_array
end

puts "res: #{solution(n, arr)}"

