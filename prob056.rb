max = 0
1.upto(99) do |a|
	1.upto(99) do |b|
		sum = 0
		(a**b).to_s.split("").each do |digit|
			sum += digit.to_i
		end
		if sum > max
			puts "max is #{sum} by #{a}^#{b} = #{a**b}"
			max = sum
		end
	end
end