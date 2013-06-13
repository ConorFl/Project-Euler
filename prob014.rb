def collatz_count(n)
	count = 1
	while n != 1
		if n % 2 == 0
			n = n/2
		else
			n = 3*n + 1
		end
		count += 1
	end
	count
end

best = 2
best_length = 2
2.upto(1000000) do |i|
	puts "testing #{i}"
	current_coll = collatz_count(i)
	if current_coll > best_length
		best = i 
		best_length = current_coll
	end
end
puts best
