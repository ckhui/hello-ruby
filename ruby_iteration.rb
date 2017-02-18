#each , collect

list = (1..10).to_a
list.each do |i|
	puts i
end

b = list.collect 
p b

b = list.collect { |e| e}
p b

b = list.collect { |e| e*5}
p b

#collect not the right way to copy array, use aray.clone


