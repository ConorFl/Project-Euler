$tests = [9,(91..98).to_a,(912..987).to_a, (9123..9876).to_a].flatten
$tests.each do |i|
	string = i.to_s
	mult = 2
	while string.length < 9
		string += (mult*i).to_s
		end
		if string.length == 9 && string.split("").uniq.length == 9
			puts string
		end
end