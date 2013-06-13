def factor_sum(n)
	sum = 1
	2.upto(Math.sqrt(n).floor) do |factor|
		if n % factor == 0
			sum+=factor
			sum+=(n/factor)
		end
	end
	sum-=Math.sqrt(n).floor if Math.sqrt(n).floor == Math.sqrt(n)
	sum
end

$sum = 0
def find_abundant
	array = []
	1.upto(28122) do |n|
		array << n if factor_sum(n) > n
	end
	array
end
$abundant_array = find_abundant()
$abundant_array_str = ""
for ab in $abundant_array
	$abundant_array_str+=","
	$abundant_array_str+=ab.to_s
end
# puts $abundant_array_str
def sum_of_abund(n)
	for abun in $abundant_array
		if n > abun 
			puts "#{n} made with #{abun}??"
			if $abundant_array.include?(n - abun)
				puts "YUP #{n} made with abuns #{abun} + #{n-abun}"
				return true
			end
		else
			return false
		end 
	end
	false
end
#28122
$all_candidates = (0..28123).to_a

# puts $all_candidates
#FINAL CODE
$howmany = 28122
$abundant_array.each_with_index do |fact1, index|
	index.upto($abundant_array.length - 1) do |fact2_index|
		if $all_candidates[fact1+$abundant_array[fact2_index]] != "" &&fact1+$abundant_array[fact2_index] <= 28123 #&& index != 0
			$howmany -= 1
			$all_candidates[fact1+$abundant_array[fact2_index]] = ""
			puts "#{fact1+$abundant_array[fact2_index]} gone #{$howmany} left"
		end
	end
end
# puts "SUM OF ABUN?: #{sum_of_abund(28123)}"
# puts "28110 abun?: #{sum_of_abund(28110)}"
# 24.upto(28122) do |i|
# 	puts i
# 	unless sum_of_abund(i) 
# 		$sum << i 
# 	end
# end
puts "and sum..."
$nons_string = ""
$all_candidates.each do |i|
	unless i == ""
		$sum += i.to_i 
		$nons_string+=",#{i}"
	end
end
puts $nons_string

# 0.upto($all_candidates.length-1) do |index|
# 	print "#{$all_candidates[index]}+"
# end
puts "SUM:...#{$sum}"
