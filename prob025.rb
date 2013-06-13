# #999999

# def fibs
# 	num1 = 1
# 	num2 = 1
# 	temp = 0
# 	nth_fib = 2
# 	length = 1
# 	count_adder = 0
# 	count_mod = 100000
# 	length_checkpoint = 1000000 - 22000
# 	next_check = 20000
# 	while length < length_checkpoint
# 		num2 = num1 + (num1 = num2)
# 		nth_fib += 1
# 		count_adder += 1
# 		if count_adder == next_check
# 			length = num2.to_s.length
# 			next_check = count_adder + 20000
# 			puts length
# 		end
# 		# elsif length > 999000 
# 		# 	length = num2.to_s.length
# 		# 	puts length
# 	end
# 		# puts "#{length}"

# 		while length < 1000000
# 			num2 = num1 + (num1 = num2)
# 			nth_fib += 1
# 			count_adder += 1
# 			if (count_adder) % count_mod == 0 
# 				length = num2.to_s.length
# 				puts length
# 			end
# 		# elsif length > 999000 
# 		# 	length = num2.to_s.length
# 		# 	puts length
# 	end

# 	puts nth_fib.to_s+"<-------"
# end
# fibs
num1 = 1
num2 = 1
ith = 2
1.upto(10000) do |i|
num2 = num1 + (num1 = num2)
ith += 1
length = num2.to_s.length
puts length
if length == 1000
	puts ith
	break
end
end