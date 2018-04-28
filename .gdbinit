# print_array *array from to
define print_array
	set $i = $arg1
	while $i < $arg2
		print $arg0[$i]
		set $i = $i + 1
	end
end

