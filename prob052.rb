def permuted n
	narr = n.to_s.split("").sort 
	2.upto(6) do |multiplier|
		return false unless narr == (n*multiplier).to_s.split("").sort
	end
	true
end

10.upto(1000000) do |i|
	# puts i if i % 1000 == 0
	if permuted(i)
		1.upto(6) do |multiplier|
			puts "#{multiplier}x#{i}:#{multiplier*i}"
		end
		puts
	end
end