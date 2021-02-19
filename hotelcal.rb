=begin
Brian Worth
1830
10/3/2020
Hotel Calculator
=end

basicRoom = 150
weekendRoom = 200
suiteroom = 0.2
resortroom = 0.3

print "How many nights is your stay?: "
nights = gets.chomp.to_i
while nights <= 0 do
    puts "Possitive NUMBERS ONLY!!"
    print "Continue(y/n)?: "
    continue = gets.chomp
    if continue == 'n'
        puts "Bye"
        exit
    elsif continue == 'y'
        print "How many nights is your stay?: "
        nights = gets.chomp.to_i
    end  
end

print "How many of these nights are weekend nights:"
weekendnights = gets.chomp.to_i
nights = nights - weekendnights

print "You looking for that 'Suite life'? (y/n): "
suitelife = gets.chomp
print "Is this a resort location (y/n): "
resortlocation = gets.chomp


if suitelife == "y" and resortlocation == "y" then
    print nights, " nights @ $", basicRoom , "\n"
    print weekendnights, " nights @ $", weekendRoom , "\n"
    suitepernight = (suiteroom * basicRoom * nights) + (suiteroom * weekendRoom * weekendnights)
    totalnights = (nights+weekendnights)
    totalsuitepernight = suitepernight/totalnights
    resortpernight = (resortroom * basicRoom * nights) + (resortroom * weekendRoom * weekendnights)   
    totalnights = (nights+weekendnights)
    totalresortpernight = resortpernight/totalnights
    print "Suite upgrade is $" , totalsuitepernight.to_f, " per night\n"
    print "Resort fee is $", totalresortpernight.to_f, " per night\n"
    basicrate = (nights * basicRoom)
    weekendrate = (weekendnights * weekendRoom) 
    totalcost = basicrate+ weekendrate + suitepernight + resortpernight
    print "Your hotel stay will cost $", totalcost.to_f, " Bon appe...trip!\n"
elsif suitelife == "y" and resortlocation == "n" then
    print nights, " nights @ $", basicRoom , "\n"
    print weekendnights, " nights @ $", weekendRoom , "\n"
    suitepernight = (suiteroom * basicRoom * nights) + (suiteroom * weekendRoom * weekendnights)
    totalnights = (nights+weekendnights)
    totalsuitepernight = suitepernight/totalnights
    print "Suite upgrade is $" , totalsuitepernight.to_f, " per night\n"
    suitetotalbaisc = (suiteroom * basicRoom + basicRoom) * nights
    suitettotalweekend = (suiteroom * weekendRoom + weekendRoom) * weekendnights
    totalcost = suitetotalbaisc + suitettotalweekend
    print "Your hotel stay will cost $", totalcost.to_f, " Bon appe...trip!\n"
elsif suitelife == "n" and resortlocation == "y" then
    print nights, " nights @ $", basicRoom , "\n"
    print weekendnights, " nights @ $", weekendRoom , "\n"
    resortpernight = (resortroom * basicRoom * nights) + (resortroom * weekendRoom * weekendnights)
    totalnights = (nights+weekendnights)
    totalresortpernight = resortpernight/totalnights
    print "Resort fee is $", totalresortpernight.to_f, " per night\n"
    resorttotalbaisc = (resortroom * basicRoom + basicRoom) * nights
    resorttotalweekend = (resortroom * weekendRoom + weekendRoom) * weekendnights
    totalcost = resorttotalbaisc + resorttotalweekend
    print "Your hotel stay will cost $", totalcost.to_f, " Bon appe...trip!\n"
elsif suitelife == "n" and resortlocation == "n" then
    print nights, " nights @ $", basicRoom , "\n"
    print weekendnights, " nights @ $", weekendRoom , "\n"
    basicrate = (nights * basicRoom)
    weekendrate = (weekendnights * weekendRoom) 
    totalcost = (basicrate + weekendrate)
    print "Your hotel stay will cost $", totalcost, " Bon appe...trip!\n"
end

