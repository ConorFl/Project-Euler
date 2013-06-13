JAN = 31
FEB	= 28
MAR = 31
APR = 30
MAY = 31
JUN = 30
JUL = 31
AUG = 31
SEP = 30
OCT = 31
NOV = 30
DEC = 31

YEAR = [JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC]
sundays = 0
year = 1901
jan011901 = 1 + YEAR.inject(:+) 
day = jan011901 % 7
puts day
def leap(year)
	if year % 4 == 0 
		if year % 100 == 0
			if year % 400 == 0
				return true
			else
				return false
			end
		end
		return true
	end
	false
end
while(year <= 2000)
	0.upto(11) do |month|
		if month == 1 && leap(year)
			day += 29
		else
			day += YEAR[month]
		end
		day = day % 7
		if day == 0
			sundays += 1
			puts "#{month+2}-#{year}"
		end
	end
	year += 1
end
puts "SUNDAYS: #{sundays}"
#check online if jan1 2001 is sunday


# 1900.upto(2008) do |year|
# 	puts "#{year}: #{leap(year)}"
# end