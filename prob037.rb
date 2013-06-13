# $primes = [[0],[],[],[],[],[],[]]
# def prime_to_proper_array(n)
# 	2.upto(Math.sqrt(n).floor) do |i|
# 		if n % i == 0
# 			return false
# 		end
# 	end
# 	puts "#{n} prime"
# 	length = n.to_s.length
# 	if length == 1
# 		$primes[1] << n
# 	else
# 		if $primes[length - 1].include?(n.to_s[0..(length - 2)].to_i) && $primes[0..(length - 1)].flatten.include?(n.to_s[1..length - 1].to_i)
# 			$primes[length] << n
# 			puts n
# 		end
# 	end
# 	# case length
# 	# when 1
# 	# 	$onep << n
# 	# when 2
# 	# 	$twop << n
# 	# when 3
# 	# 	$threep << n
# 	# when 4
# 	# 	$fourp << n
# 	# when 5
# 	# 	$fivep << n
# 	# else
# 	# 	puts "-----------------------------WEIRD: #{n}"
# 	# end
# end

# $max = 999999
# 2.upto($max) do |num|
# 	prime_to_proper_array(num)
# end

# # puts $onep.inspect
# # puts $twop.inspect
# # puts $threep.inspect
# # puts $fourp.inspect
# # # puts $fivep

# puts $primes.inspect
# puts $primes[4].length

def prime?(n)
	return false if n == 1
	2.upto(Math.sqrt(n).floor) do |factor|
		return false if n % factor == 0
	end
	return true
end
# $left = [[0]['2','3','5','7']['23','37',][][][]]
$left = []
$right = []

def prime_left(n_str)
	1.upto(n_str.length - 1) do |digits|
		# puts "Testing #{n_str[0,digits].to_i}"
		unless prime?(n_str[0,digits].to_i)
			return false
		end
	end
	# puts "YIPPEE LEFT #{n_str}"
	$left << n_str
end

def prime_right(n_str)
	1.upto(n_str.length - 1) do |digits|
		# puts "Testing #{n_str[0,digits].to_i}"
		unless prime?(n_str[-digits,digits].to_i)
			return false
		end
	end
	# puts "YIPPEE RIGHT #{n_str}"
	$right << n_str
end

"10".upto("1000000") do |x|
	if prime?(x.to_i) && prime_left(x) && prime_right(x)
		puts "----------------------- #{x}"
	end
end

puts ($left.map{|x| x.to_i} & $right.map{|x| x.to_i}).inject(:+)

# while $count < 11
# 	$start.each do |i|
# 		$start.each do |j|
# 			if i.to_s[1..(i.to_s.length - 1)]
# 		end
# 	end

# end