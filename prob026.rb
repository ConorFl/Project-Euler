# def recur_length(n)
# 	dividend = 10
# 	decimal = ""
# 	while true
# 		while dividend / n < 1 && dividend != 0
# 			dividend*=10
# 			decimal += "0"
# 		end
# 		new_dividend = dividend/n
# 		decimal += new_dividend.to_s
# 		if decimal.length > 60 #|| dividend == new_dividend*n
# 			# puts "#{n}: #{decimal}"
# 			rep_length = 0
# 			n1 = decimal[decimal.length-1]
# 			n2 = decimal[decimal.length-2]
# 			n3 = decimal[decimal.length-3]
# 			(decimal.length - 1).downto(2) do |i|
# 				rep_length += 1
# 				if decimal[i-1]==n1 &&decimal[i-2]==n2 &&decimal[i-3]==n3
# 					puts "#{n}- length: #{rep_length} dec: #{decimal}"
# 					return rep_length
# 				end
# 			end
# 		end
# 		# puts dividend
# 		dividend = (dividend - n*new_dividend)*10
# 		# puts dividend
# 	end
# end

# $best = 1
# $best_val = 1

# 2.upto(888) do |n|
# 	tester = recur_length(n)
# 	puts tester.class
# 	if tester > $best
# 		$best = tester
# 		$best_val = n
# 	end 
# end
# puts "AND...#{$best} from #{$best_val}"
# recur_length(63)
# recur_length(77)
# recur_length(81)
# recur_length(121)
# recur_length(7*7*3*3)
# recur_length(7**3)
# recur_length(243)
# recur_length(3*3*3*3*3*3*7)
# recur_length(3*49)
# recur_length(81*49)
# recur_length(81*11)
#3^1 -> 1
#3^2 -> 1
#3^3 -> 3
#3^4 -> 9
#3^5 -> 27
#3^6 -> 81

#9^1 -> 1
#9^2 -> 9
#9^3 -> 81

#7^1 -> 6
#7^2 -> 42
#7^3 -> 294

#9^1 * 7^1 -> 6 (1,6)
#9^2 * 7^1 -> 18 (9,6)/z
#9^3 * 7^1 -> 162 (81,6)
#9^2 * 7^2 -> 126 (9,42)

#9^1 * 7^1 -> 6 (1,6)
#9^1 * 7^2 -> 42 (1,42)
#9^2 * 7^2 -> 126 (9,42)

#11^1 -> 2
#11^2 -> 22

#11^1 * 9^1 -> 2
#11^2 * 9^1 -> 22
#11^1 * 9^2 -> 18 ??

#3^1 * 7^1 -> 6
#3^2 * 7^1 -> 6
#3^3 * 7^1 -> 6
#3^4 * 7^1 -> 18
#3^1 * 7^2 -> 42
#3^2 * 7^2 -> 42
#3^3 * 7^2 -> 42
#3^4 * 7^2 ->

#NEW TRY
$rep_max = 0
$repeat_count = [0,1]
def div_add_to_strings(n, decimals)
	# print "For #{n}, "
	decimal_str = "0."
	remainder = 1
	decimals.times do 
		remainder *= 10
		decimal_str += (remainder / n).to_s
		remainder -= (remainder / n)*n
	end
	$nums_as_strings << decimal_str
	rep_length = decimal_str[12..decimals+2].index(decimal_str[11..16])
	# fives = 0
	# twos = 0
	# num = n
	# while num % 5 == 0
	# 	num = num / 5
	# 	fives += 1
	# end
	# while num % 2 == 0
	# 	num = num / 2
	# 	twos += 1
	# end
	# puts "For (2,5): #{[twos,fives].inspect}"
	$repeat_count << rep_length
	puts "#{n}(#{rep_length})"
	if rep_length > $rep_max
		$rep_max = rep_length
		puts
		puts "NEW MAX WITH #{n}-------------------------------------------------#{rep_length}"
	end
end	
$nums_as_strings = []
$decimal_length = 1000
2.upto(100) do |x|
	div_add_to_strings(x, $decimal_length)
end
div_add_to_strings(9*9*11,100)
# puts $nums_as_strings
# puts $repeat_count
puts $repeat_count.max