=begin
Brian Worth
1830
10/23/2020
Uses code created in signal/left/right and outputs traffic light 
information based on input provided.
=end

require_relative 'signal'
require_relative 'RightTurnsignal'
require_relative 'LeftTurnsignal'

s = Toast.new( 10, 11, 12 )
puts "signal--->"
s.cycle( )

l = LeftTurnsignal.new( 20, 21, 22, 10 )
puts "\nLeftTurnsignal--->"
l.cycle( )

r = RightTurnsignal.new( 30, 31, 32, 10 )
puts "\nRightTurnsignal--->"
r.cycle( )


