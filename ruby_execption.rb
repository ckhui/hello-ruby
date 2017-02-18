
#syntax

=begin
begin  
# -  
rescue OneTypeOfException  
# -  
rescue AnotherTypeOfException  
# -  
else  
# Other exceptions
ensure
# Always will be executed
end
=end

#!/usr/bin/ruby

begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
      file = STDIN
end
print file, "==", STDIN, "\n"

#retry 
#syntax
=begin
begin
    # Exceptions raised by this code will 
	# be caught by the following rescue clause
rescue
    # This block will capture all types of exceptions
    retry  # This will move control to the beginning of begin
end
=end


begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
   fname = "existant_file"
   #retry
end

#raise , raise an exception

#syntax
#raise   => raise current exception or RuntimeError 
#raise "Error Message"  => raise RuntimeError with message
#raise ExceptionType, "Error Message" => rasie error with ExceptionType and message
#raise ExceptionType, "Error Message" condition => same with 3rd with condition


begin  
    puts 'I am before the raise.'  
    raise 'An error has occurred.'  
    puts 'I am after the raise.'  
rescue  
    puts 'I am rescued.'  
end  
puts 'I am after the begin block.'  


#ensure, (finally in python)
#else , if exception not catch by rescue
begin  
  raise 'A test exception.'  
rescue Exception => e  
  puts e.message  
  puts e.backtrace.inspect  
else
   puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end



#catch and throw
#The catch defines a block that is labeled with the given name (which may be a Symbol or a String). 
#The block is executed normally until a throw is encountered.

#syntax
=begin
throw :lablename
#.. this will not be executed
catch :lablename do
#.. matching catch will be executed after a throw is encountered.
end

OR

throw :lablename condition
#.. this will not be executed
catch :lablename do
#.. matching catch will be executed after a throw is encountered.
end	
=end

def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name:")


#exception class
#Interrupt
#NoMemoryError
#SignalException
#ScriptError
#StandardError
#SystemExit

#subclass error
class FileSaveError < StandardError
   attr_reader :reason
   def initialize(reason)
      @reason = reason
   end
end

File.open(path, "w") do |file|
begin
    # Write out the data ...
rescue
    # Something went wrong!
    raise FileSaveError.new($!)
end
end


#Raised error message can be captured using $! variable.