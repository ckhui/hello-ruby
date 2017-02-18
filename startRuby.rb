#!/usr/bin/ruby -w

puts "Hello, Ruby!";

puts "hi"

a = 12
b = 13

puts a+b
puts a + b

print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF

print <<"EOF";                # same as above
    This is the second way of creating
    here document ie. multiple line string.
EOF

print <<`EOC`                 # execute commands
	echo hi there
	echo lo there
EOC

print <<"foo", <<"bar"  # you can stack them
	I said foo.
foo
	I said bar.
bar

#!/usr/bin/ruby

puts "This is main Ruby Program"

BEGIN {
   puts "Initializing Ruby Program"
}

a = 64 
b = 12
puts a >> 1 >> 1 >> 1 >> 1