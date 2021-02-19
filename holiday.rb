=begin
Brian Worth
1830
10/23/2020
Used to create a Class Holiday to be used in main.rb
=end

class Holiday
    def initialize(mName, mDay, mMonth)
        @mName = mName
        @mDay = mDay
        @mMonth = mMonth
    end

    # accessor methods
    def mName
        @mName
    end

    def mDay
        @mDay
    end

    def mMonth
        @mMonth
    end

    # provide a string representation
    def to_s
        "#{@mName} falls on #{@mMonth} #{@mDay}\n"
    end

    #check to see if mDay value is the same between class objects
    def sameDay?( value )
        if value.is_a? Holiday
            @mDay == value.mDay
        else
            false
        end
    end

    #check to see if mMonth value is the same between class objects
    def sameMonth? (value)
        if value.is_a? Holiday
            @mMonth == value.mMonth
        else
            false
        end
    end
    
end

