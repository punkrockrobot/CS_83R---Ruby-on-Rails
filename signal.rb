=begin
Brian Worth
1830
10/28/2020
Used to create a Class signal to be used in main.rb
=end

class Toast 
    def initialize(mRed, mYellow, mGreen)
        @mRed = mRed
        @mGreen = mGreen
        @mYellow = mYellow
    end

    # accessor methods
    def mRed
        @mRed
    end

    def mGreen
        @mGreen
    end

    def mYellow
        @mYellow
    end

    def to_s
        cycle()
      end
    
    def cycle()
        puts " "
        puts "SIGNAL:"
        puts "red going for #{@mRed} seconds"
        puts "green going for #{@mGreen} seconds"
        puts "yellow going for #{@mYellow} seconds"
    end

end
