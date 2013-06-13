def factor_sum(n)
	sum = 0
	1.upto(n-1) do |factor|
		sum += factor if n % factor == 0
		# puts factor if n % factor == 0
	end
	sum
end
# puts factor_sum(28)
amicable_sum = 0
2.upto(10000) do |i|
	factors = factor_sum(i)
	if factor_sum(factors) == i && i != factors
		puts "#{i} factors: #{factors}, #{factors} factors: #{factor_sum(factors)}"
		amicable_sum += i 
	end
end
puts amicable_sum