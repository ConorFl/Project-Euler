count = 0
max = 100
1.upto(max) do |n|
	puts n
	1.upto(n) do |k|
		fact = (((n-k+1)..n).inject(:*))/((1..k).inject(:*))
		# puts "#{n} choose #{k}: #{fact}"
		# # puts "num: #{((n-k+1)..n).inject(:*)}"
		if fact > 1000000
			count += 1
		end
	end
end

puts count