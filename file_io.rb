require 'yaml'
# p File.read("sample_file.txt")
# r,r+, w, w+, a, a+
########################################

# f1 = File.open("sample_file.txt", "a+")
# puts f1.read
# # puts f1.inspect
# f1.write("Left me with life in hell\n")
# f1.close

########################################

# File.open("sample_file_2.txt", "w") do |f|
# 	f.puts "This is a new file with text I'm writing to it"
# end

# f2 = File.open("sample_file_2.txt" , "r") do |f1| while line = f1.gets
# 		puts line
# 	end
# end

########################################

# f3 = File.open("data1.txt", "r+")
# p f3.read
# f3.rewind #rewind takes the pointer to the beginning of the file
# # p f3.read
# buffer = ""
# f3.read(5, buffer) #read the five bytes from where the pointer is and puts it in buffer
# p buffer
# f3.close

########################################

# File.open("data1.txt") do |f|
# 	f.seek(2, IO::SEEK_SET) #where to start reading
# 	p f.read(4) #how many bites to read
# end

# data = File.readlines("data1.txt") #readline returns in an array, with newlines as the break point
# p data[0] #data can be returned like an array

########################################
File.open('yaml_data.yaml', 'r').each do |f|
	puts YAML::load(f)
end

f4 = File.open('new_yaml.yaml', "w+")
f4.puts YAML::dump("TEST")

########################################

f5 = open('data1.txt', "w")
f5.write('New Data')
f5.close









