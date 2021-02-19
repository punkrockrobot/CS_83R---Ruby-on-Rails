=begin
Brian Worth
1830
10/15/2020
This program reads a string of information and uses a Hash to keep track of letter frequencies
=end

#Create and empty hash and ask for input
hashstr = Hash.new(0)
print "Enter a string: "
#take the input make everything lower case and delete white space
string = gets.chomp.downcase.delete(" ")

#new var that takes the string, sorts the charaters
letters = string.chars.sort

#loops through the sort letters counting them up and then adds to the empty hash
letters.each do |letter|
    hashstr[letter] +=1
end
#loop through the hash and displays the results along with how many times it appears
hashstr.each do |k,v|
    puts k.upcase + " - " + v.to_s + ' - ' + '*' * v
end

