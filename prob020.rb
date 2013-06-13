product = 1
digit_sum = 0
1.upto(100) do |i|
	product *= i
end
product = product.to_s.split("")
for digit in product 
	digit_sum += digit.to_i
end
puts digit_sum