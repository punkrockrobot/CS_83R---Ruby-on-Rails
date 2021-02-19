=begin
Brian Worth
1830
10/7/2020
To calculate student fees for a semester
=end

def semester (units, quarter, res, parking, asfee, idcard)
    if (quarter < 0 or quarter > 3)
        raise "inappropriate percentage passed"      
    end

    case quarter
    when 0
        school = "Fall"
        qfee = 53.50        
    when 1
        school = "Winter"
        qfee = 50.50
    when 2
        school = "Spring"
        qfee = 53.50       
    when 3
        school = "Summer"
        qfee = 50.50         
    end

 #test for resident 
    if (res < 0 or res > 1)
        raise "inappropriate percentage passed" 
    end

    case res
    when 0
        perunit = units * 46.00       
    when 1
        perunit = units * 370.00     
    end

#test for parking decal
    if (parking != "y" and parking != "n")
        raise "inappropriate percentage passed"
    end
    if (quarter == 1 or quarter == 3 and parking == "y")
        parkfee = 45.00
    elsif (quarter == 0 or quarter == 2 and parking == "y")
        parkfee = 85.00
    elsif (quarter == 1 or quarter == 3 and parking == "n")
        parkfee = 0
    elsif (quarter == 0 or quarter == 2 and parking == "n")
        parkfee = 0

    end

#test of AS sticker

    if (asfee != "y" and asfee != "n")
        raise "inappropriate percentage passed" 
    end
    
    case asfee
    when "y"
        assticker = 19.50
    when "n"
        assticker = 0
    end

#test ID
    if (idcard != "y" and idcard != "n")
        raise "inappropriate percentage passed" 
    end

    case idcard
    when "y"
        cardfee = 13
    when "n"
        cardfee = 0
    end


#fee calculation
totalcost = perunit + qfee + parkfee + assticker + cardfee

print "For ", school, ", your total fees are $", totalcost, "\n"

 end

begin
    
    print "WELCOME TO SMC. LET'S SPEND SOME MONEY!!\n\n"
    print "Enter number of units enrolled: "
    cred = gets.chomp.to_i
    print "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session: "
    sem = gets.chomp.to_i
    print "Are you a state resident[0] or not[1] "
    calres = gets.chomp.to_i
    print "Want a parking decal? [y/n]: "
    parkstick = gets.chomp
    print "Want an AS sticker? [y/n]: "
    asstick = gets.chomp
    print "Want an ID card? [y/n]: "
    stuid = gets.chomp

semester(cred, sem, calres, parkstick, asstick, stuid)

rescue => exception

    puts "Please enter vaild input for the question being asked" 

ensure
    puts "Bye"
    
end
