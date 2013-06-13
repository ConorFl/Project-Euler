FACTORIAL = {
	'0' => 1,
	'1' => 1,
	'2' => 2,
	'3' => 6,
	'4' => 24,
	'5' => 120,
	'6' => 720,
	'7' => 5040,
	'8' => 40320,
	'9' => 362880
}
$sum = 0
MAX = 10000000

100.upto(MAX) do |n|
	sum = 0
	digits_in_num = (n.to_s.split(""))
	# puts "#{digits_in_num}: digits from #{n}" if n % 1000 == 0
	"0".upto("9") do |digit|
		appearances = digits_in_num.count(digit)
		sum += FACTORIAL[digit]*appearances if appearances > 0
	end
	puts "#{n},#{sum}" if n % 1000 == 0
	if n == sum
		$sum += n
		puts "#{n} (#{$sum})-------------------------------------------------"
		if $sum > 145
			break
		end
	end
end

puts "SUM: #{$sum}"