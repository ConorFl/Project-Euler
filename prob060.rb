$primes = []
$set_of_5 = ["3","7","109","673"]
def prime n
	2.upto(Math.sqrt(n).floor) do |factor|
		return false if n % factor == 0
	end
	true
end
2.upto(99999) do |x|
	puts x
	$primes << x.to_s if prime(x)
end
puts $primes.length
$primes = $primes - $set_of_5
puts $primes.length
$primes.each do |prime|
	print "#{prime}:"
	prime_count = 0
	$set_of_5.each do |set_of_4_num|
		if prime((set_of_4_num+prime).to_i) && prime((prime+set_of_4_num).to_i)
			print "#{(set_of_4_num+prime)},#{prim
			e+set_of_4_num},"
			prime_count += 1
		else
			break
		end
	end
	if prime_count == 4
		puts "YIPPPPPPPPPPPPPPPPPPPPPPPPPPPEEEEEEEEEEEEEEEEEEEEEEE" 
		$set_of_5 << prime

	else 
		print "prime count: #{prime_count}"
	end
	puts
end
puts "SET OF 5: #{$set_of_5}"