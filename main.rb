=begin
Brian Worth
1830
10/23/2020
Uses code created in holiday.rb outputs Hoilday information based on input provided.
=end

require_relative 'holiday'

# July 4
july4 = Holiday.new( "Independence Day", 4, "July" )
puts ( "Here is July 4 Information!!" )
puts july4


#Thanksgiving
thanksgiving = Holiday.new( "Thanksgiving", 25, "November" )
puts ( "Here is Thanksgiving information!!" )

day = thanksgiving.mDay( )
month = thanksgiving.mMonth( )
name = thanksgiving.mName( )
puts "#{day} #{month} #{name}"

#Xmas
xmas = Holiday.new( "Christmas Day", 25, "December" )
day = xmas.mDay( )
month = xmas.mMonth( )
name = xmas.mName( )
puts ( "Here is Xmas information!!" )
puts "#{day} #{month} #{name}"

#Conditionals that compare day and month
if ( xmas.sameDay? ( thanksgiving ))
    puts "Thanksgiving and Xmas fall on the same day!"
else
    puts "Thanksgiving and Xmas do not fall on the same day"
end

if (thanksgiving.sameMonth?( xmas ))
    puts "Thanksgiving and Xmas fall in the same month!"
else
    puts "Thanksgiving and Xmas do not fall in the same month!"
end

