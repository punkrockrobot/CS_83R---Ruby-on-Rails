=begin
Brian Worth
1830
10/28/2020
Used to create a Class signal to be used in main.rb
=end
require_relative 'signal'

class RightTurnsignal < Toast
    def initialize(mRed, mGreen, mYellow, mRight)
        super(mRed, mGreen, mYellow)
        @mRight = mRight
    end

    def mRight
        @mRight
    end

    def cycle()
        puts "RIGHTTURNSIGNAL:"
        puts "red going for #{@mRed} seconds"
        puts "right going for #{@mRight} seconds"
        puts "green going for #{@mGreen} seconds"
        puts "yellow going for #{@mYellow} seconds"
    end
end



