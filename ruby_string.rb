#!/usr/local/bin/ruby -w
puts $VERBOSE   # true

puts "Double quote String here"
puts 'Won\'t you read O\'Reilly\'s book?'

puts "Won\'t you read O\'Reilly\'s book?"

a, b, c = 13, 36 ,723
puts "The value of a is #{ a }."
puts "The value of sum is #{ a + b + c}."


#can user ! ( { < for delimiter
puts %{  Ruby is fun.}
puts %Q{  Ruby is fun.}
puts %q[Ruby is fun.]   #single quote string
puts %x!pwd!   #command 


#in double-quoted string, an escape character is interpreted
#in a single-quoted string, an escape character is preserved.
puts "\a"  + '\a'
puts "\b" + '\b'
# \cx, \C-x , control-x
puts "\e" + '\e'
puts "\f" + '\f'

#puts "\M-\C-x" + 'M-\C-x'


puts "double \n" + 'single \n'
puts "\555" + '\nnn'  #\nnn , n is in the range 0.7
puts "123\r123" + '123\r123'

puts "123\s123" + '123\s123'

puts "123\t123" + '123\t123'

puts "123\v123" + '123\v123'

#\x , character x, \xnn , n in the range 0.9,a.f or A.F, hex
puts "123\x123" + '123\x123' 


line = String.new("This IS string")
puts line.downcase
puts line
puts line.upcase!
puts line
puts "#{line}"

word = "asd"
puts word * 12
puts word + word + "hi"

word << word
puts word 

#-1 less than, 0 equal , 1 greater than
puts word <=> "asd"
puts word <=> "bbb"
puts word <=> "asdasd"

puts "asd" == "asd"
puts "asd" != "aaa"

#regular expression
# puts "email@domain.com" =~

puts "i love lower case".capitalize
puts "abced".casecmp "ABCED"
puts "c e n t e r a sting".center 70

puts "asd\nasd\n\n".chomp #remove \n at the end
puts "asd2"

puts "12345a".chop # remove the last char

# .concat
# .count
puts "112321321".count "9an2" # return character count from the 2ndstring
puts "abcdefg".crypt "sd" # input of 2 char string , A.Z , a.z ,0.9 , . and /

# MORE: other string function, unpack, regular expression

