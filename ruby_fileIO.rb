
#i/o

#puts putc, print
#gets
#File.new , File.open
#syswrite, sysread, each_byte
#IO.readlines(flename)


puts "Enter a value :"
#val = gets
#puts val

#puts string, putc char
putc "Hello"

#file

#mode can be r ,r+ , w , w+ , a , a+
aFile = File.new("filename", "mode")
   # ... process the file
aFile.close

File.open("filename", "mode") do |aFile|
   # ... process the file
end

#get file
# read a line
aFile.gets

#sysread 
#example "input.txt" contains
=begin
This is a simple text file for testing purpose.
=end
aFile = File.new("input.txt", "r")
if aFile
   content = aFile.sysread(20)
   #output the first 20 char, the pointer will now at the 21st car
   puts content
else
   puts "Unable to open file!"
end

#syswrite
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

#each_byte
aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end

#IO.readlines
arr = IO.readlines("input.txt")
#read line by line, return an array
puts arr[0]
puts arr[1]

#IO.foreach
IO.foreach("input.txt"){|block| puts block}
#read line by line also, in block, dont return an array


#rename and delete file, mode and ownership
File.rename( "test1.txt", "test2.txt" )
File.delete("test2.txt")
file = File.new( "test.txt", "w" )
file.chmod( 0755 )

=begin
mask for chmod argument
0700	rwx mask for owner
0400	r for owner
0200	w for owner
0100	x for owner
0070	rwx mask for group
0040	r for group
0020	w for group
0010	x for group
0007	rwx mask for other
0004	r for other
0002	w for other
0001	x for other
4000	Set user ID on execution
2000	Set group ID on execution
1000	Save swapped text, even after use	

	
=end

#file inquiries

#check file exist before opening it
File.open("file.rb") if File::exists?( "file.rb" )

#check existence of a file 
# This returns either true or false
File.file?( "text.txt" ) 

#check given file name is a directory
# a directory
File::directory?( "/usr/local/bin" ) # => true
# a file
File::directory?( "file.rb" ) # => false

#check mod
File.readable?( "test.txt" )   # => true
File.writable?( "test.txt" )   # => true
File.executable?( "test.txt" ) # => false

#size
#check zero size
File.zero?( "test.txt" )      # => true
#get size
File.size?( "text.txt" )     # => 1002

#get file type
File::ftype( "test.txt" )     # => file
#possible result: file, directory, characterSpecial, blockSpecial, fifo, link, socket, or unknown.

#time
#creat, modifiedm last accessed
File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008

#Dir Class
#change diractory
Dir.chdir("/usr/bin")

#get current dir
puts Dir.pwd

#get list of file and directories
puts Dir.entries("/usr/bin").join(' ')
#Dir.entries(dir) will return an array

#loop through each file/dir in dir
Dir.foreach("/usr/bin") do |entry|
   puts entry
end

#more concise way to get dir listing 
Dir["/usr/bin/*"]

#create dir
Dir.mkdir("mynewdir")
Dir.mkdir( "mynewdir", 755 )
#755 is the mod

#delete dir
Dir.delete("testdir")


#tempoary dir
#not available by default, require 'mpdir'
require 'tmpdir'
   tempfilename = File.join(Dir.tmpdir, "tingtong")
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file"
   tempfile.close
   File.delete(tempfilename)

 #or use  'tempfile'
 require 'tempfile'
   f = Tempfile.new('tingtong')
   f.puts "Hello"
   puts f.path
   f.close


 #more dir class and file class method
 https://www.tutorialspoint.com/ruby/ruby_dir_methods.htm
 https://www.tutorialspoint.com/ruby/ruby_file_methods.htm


