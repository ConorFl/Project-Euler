$four_primes = []

def prime(n)
	2.upto(Math.sqrt(n).floor) do |factor|
		return false if n % factor == 0
	end
	true
end
1000.upto(9999) do |x|
	$four_primes << x if prime(x)
end
$arr_to_num = {}
$fours_as_arrs = $four_primes.map{|x| x.to_s.split("").sort}
$fours_as_arrs.uniq do |x|
	$arr_to_num[x] = []
end
$four_primes.each do |x|
	if $fours_as_arrs.count(x.to_s.split("").sort) >= 3
		$arr_to_num[x.to_s.split("").sort] << x
	end
end
$fours_as_arrs.each do |x|
	if $arr_to_num[x].length >=3
		puts "for #{x.inspect} #{$arr_to_num[x].inspect}"
		seq_test = $arr_to_num[x].sort
		if seq_test[1] - seq_test[0] == seq_test[2] - seq_test[1]
			puts "YIPPEE: #{$arr_to_num[x]}"
		end
	end
end
# $four_primes.each do |prime|
# 	perms = []
# 	digits = prime.to_s.split('')

# end
# puts $four_primes.inspect