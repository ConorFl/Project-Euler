$pen_numz = []
$smallest_diff = 10000
$smallest_n_k = ""
$winners = []

def pen_sum_and_diff(n,k)
	#check if p1 exists for sub: 6nk + 3k - 1
	first = n*(3*n - 1)/2
	second = (n+k)*(3*(n+k) - 1)/2
	sum = first+second
	diff = second - first
	# puts "P[#{n}]:#{first}, P[#{n+k}]:#{second}, sum:#{sum}"
	2.upto(Math.sqrt(diff).floor) do |p1|
		# puts "testing #{p1}"
		if p1*(3*p1 - 1)/2 == diff
			2.upto(Math.sqrt(sum).floor) do |p2|
				if p2*(3*p2 - 1)/2 == sum
					x = "p1[#{n}]:#{first}, p1[#{n+k}]:#{second}, diff: #{diff}, sum: #{sum}"
					puts x
					if diff < $smallest_diff
						$smallest_diff = diff
						$smallest_n_k = x
					end
				end
			end
		end
	end
end

# 0.upto(10000) do |n|
# 	$pen_numz << n*(3*n-1)/2
# end

puts "begin"

# puts $pen_numz
$max_num = 1000
3.upto($max_num - 1) do |k|
	puts "testing #{k}"
	1.upto($max_num-k) do |n|
		# puts "testing n:#{n} with k:#{k}"
		pen_sum_and_diff(n,k)
	end
end
puts $winners.length
puts "BEST: #{$smallest_n_k}"