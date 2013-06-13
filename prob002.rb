def even_fibonacci(n)
	a1 = 1
	a2 = 2
	temp = 0
	even_total = 2
	while(temp <= n)
		temp = a1 + a2
		a1 = a2
		a2 = temp
		even_total += temp if temp % 2 == 0
	end
	puts even_total
end

even_fibonacci(4000000)