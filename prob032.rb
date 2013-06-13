$sum = 0
$sum_arr = []
def check_pan(a,b)
	# puts "#{a} X #{b} #{a*b}"
	numberz = []
	[a,b,a*b].each do |i|
		i.to_s.split("").each do |dig|
			numberz << dig.to_i
		end
	end
	if numberz.uniq.length == 9 && !numberz.include?(0)
		puts "#{a} X #{b} #{a*b}"
		unless $sum_arr.include?(a*b)
			$sum += a*b 
			$sum_arr << a*b
		end
	end
end

1.upto(10000) do |a|
	puts a if a % 50 == 0
	1.upto(10000) do |b|
		check_pan(a,b) if Math.log10(a).floor + Math.log10(b).floor + Math.log10(a*b).floor == 6
	end
end
puts "SUM--#{$sum}"