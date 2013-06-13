TEENS = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
TENS = ["twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
ONES = ["","one","two","three","four","five","six","seven","eight","nine","ten"]
def num_to_str(n)
	str = ""
	if n/100 > 0
		str += ONES[n/100]
		str += "hundred"
		str += "and" if n % 100 != 0
		n = n - n/100*100
	end
	if n/10 > 1
		str += TENS[n/10-2]
		n = n - n/10*10
		str += ONES[n] if n > 0
	elsif n/10 == 1 && n != 10
		str += TEENS[n % 10 - 1]
	else
		str += ONES[n]
	end
	str
end

letter_count = 0
1.upto(999) do |n|
	temp = num_to_str(n)
	puts "#{n}: #{temp}"
	letter_count += temp.length
end
letter_count += "onethousand".length
puts letter_count