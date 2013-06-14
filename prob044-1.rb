max_index= 5000
min_pair = []
pen = []
1.upto(max_index) do |x|
	# print ","+ x.to_s
	pen << x*(3*x-1)/2
end
puts "hi"
puts pen.inspect
rounds = max_index*(max_index -1)/2
round_num = 1
pen.combination(2).each do |pair|
	# puts "here"
	round_num += 1
	# puts "#{round_num} out of #{rounds}"
	if pen.include?(pair[1]-pair[0]) && pen.include?(pair[1]+pair[0])
		print (pair[1]-pair[0]).to_s+","
		min_pair << pair
	end
end
puts "done"
puts min_pair