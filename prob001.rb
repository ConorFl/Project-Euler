def sum_multiples(n)
	total = 0
	3.upto(n-1) do |x|
		total += x if (x%3==0 || x%5==0)
	end
	puts total
end


sum_multiples(1000)