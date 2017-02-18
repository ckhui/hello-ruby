a = [1,2,3,4,5]
puts a.size
puts a.length

b = [a,a,a]
puts b.size
puts b.length

names = Array.new(4 , "value")
puts names
puts "#{names}"

nums = Array.new(10) {|e| e = e * 2 }
puts "#{nums}"

nums2 = Array.[](1, 2, 3, 4,5)
puts "#{nums2}"

num3 = Array[1,2,3,4,5]
puts "#{num3}"

num4 = Array(0..9)
puts "#{num4}"

#declare an array
# Array.[](...) [or] Array[...] [or] [...]

puts nums.at(7)

puts "#{nums & num4}" # return element in comment


#hash / dict
months0 = Hash.new

#make default value
months1 = Hash.new( "month" )
months2 = Hash.new "month"

puts "#{months0}"
puts "#{months1}"
puts "#{months2}"

puts "#{months0[3]}"
puts "#{months1[4]}"
puts "#{months2[9]}"

H = Hash["a" => 100, "b" => 200]
puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H[1]}" #no value


months0["jan"] = "January"
puts "#{months0.keys}"
puts "#{months0.values}"
puts "#{months0["jan"]}"
puts "#{months1.default}"
