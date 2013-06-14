max = 10000
count = {}
1.upto(max) do |i|
	puts i
	num = i
	# catch(:done) do
	50.times do |round|
	all_good = true
		num = num+(num.to_s.reverse.to_i)																																																																																																																												
		max_index = num.to_s.length - 1
		# puts "testing #{num} from #{i} with max index #{max_index}"
		0.upto(((max_index)/2.0).floor) do |index|
			unless num.to_s[index] == num.to_s[max_index - index]
				all_good = false
				# break
			end
		end
		if all_good
			count[i] = "palin"
			puts "#{i} palin (non-lych) from #{num} (#{count.length}) in round #{round}" 
			# break
		end
	end
end
puts max - count.length
# catch (:done) do
#   5.times { |i|
#     5.times { |j|
#       puts "#{i} #{j}"
#       throw :done if i + j > 5
#     }
#   }
# end