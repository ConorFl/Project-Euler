arr = [0,1,2,3,4,5,6,7,8,9]
arrstr = ['0','1','2','3','4','5','6','7','8','9']
perms_arr = []
$count = 0
$last = ""
def permz(str_so_far, unused)
	if(unused.length == 0)
		$count+=1
		$last = str_so_far
		puts "#{$count}: #{$last}"
		return true
	end
	for x in unused
		new_unused = unused - [x]
		if $count == 1000000
			puts $last
		else
			permz(str_so_far+x, new_unused)
		end
	end
end

permz("",arrstr)