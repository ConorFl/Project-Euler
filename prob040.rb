#d1 - 1
# 9 - 1
# 90 - 2
# 900 - 3
# 9000 - 4

str = ""
1.upto(200000) do |i|
	# puts i if i % 1000 == 0
	str += i.to_s
end
puts str.length
puts str[0].to_i*str[9].to_i*str[99].to_i*str[999].to_i*str[9999].to_i*str[99999].to_i*str[999999].to_i
