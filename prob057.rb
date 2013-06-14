num = 1
den = 1
count = 0
1.upto(1000) do |index|
	temp = den
	den = num + den
	num = temp + den
	puts "#{num}/#{den}"
	if num.to_s.length > den.to_s.length
		count+= 1
		puts "--------------------------------------------#{count}"
	end
end
puts count