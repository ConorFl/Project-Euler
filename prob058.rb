def prime(n)
	2.upto(Math.sqrt(n).floor) do |i|
		return false if n % i == 0
	end
	true
end
prime = 0
comp = 1
num = 1
1.upto(13300) do |cycle|
	length = 1 + 2*cycle
	1.upto(4) do |mult|
		# puts "adding #{2*mult*cycle} to #{num}"
		if prime(num+2*mult*cycle)
			# puts "#{num+(2*mult*cycle)} PRIME"
			prime += 1
		else
			# puts num + 2*mult*cycle
			comp += 1
		end
	end
	num = num + 8*cycle

	# puts "num now #{num}"

	puts "length: #{length} (#{prime/(prime+comp).to_f})"
end
