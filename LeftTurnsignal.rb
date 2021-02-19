=begin
Brian Worth
1830
10/28/2020
Used to create a Class signal to be used in main.rb
=end
require_relative 'signal'

class LeftTurnsignal < Toast
    def initialize(mRed, mGreen, mYellow, mLeft)
        super(mRed, mGreen, mYellow)
        @mLeft = mLeft
    end

    def mLeft
        @mLeft
    end

    def cycle()
        puts "LEFTTURNSIGNAL:"
        puts "red going for #{@mRed} seconds"
        puts "left going for #{@mLeft} seconds"
        puts "green going for #{@mGreen} seconds"
        puts "yellow going for #{@mYellow} seconds"
    end
end