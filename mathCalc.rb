=begin
Brian Worth
1830
10/14/2020
To calculate an array of numbers - SUM, Average, Median, Standard Deviation
=end

myarray = Array.new

print ("[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: ")
input = gets.chomp
#While loop so we can get continuous input as long as the conditions are met
while (input == "N" or input == "A" or input == "M" or input == "S" or input == "C")
    if (input == "N" or myarray.empty?)
    print ("How man numbers do you want to work with: ")
    n = gets.chomp.to_i
    puts ("Enter your Numbers: ")
        while (n > 0)
            myarray.push(gets.chomp.to_i)
            n = n - 1
        end
    end
print ("[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: ")
input = gets.chomp
#if USER INPUT is A. set sum formula variables do a loop for each item in the array
#sum and count are talled, Average can be found.
    if (input == "A")
        sum = 0
        count = 0
        myarray.each do |i|
            sum += i
            count +=1
        end
        average = sum.to_f/count.to_f
        print("Average = ", '%.2f' %average.to_f, "\n")
    end
#if USER INPUT is M. Make a new sorted array from myarray. use the .count method to get the new sorted array count
#sum and count are talled, Average can be found.
    if (input == "M")
        sort_array = myarray.sort
        count = sort_array.count
#if even number of items in array to this and seperate items to get the l and r section numbers       
        if (sort_array.count % 2 == 0)
            leftsection = (sort_array[0...(count/2)])
            rightsection = (sort_array[(count/2)..-1])
            
            l_median = leftsection[-1]
            r_median = rightsection[0]

            median = ((l_median + l_median).to_f / 2.to_f)
            print("Median = ", median, "\n")
#if Odd number of items in the array do this           
        else
            median = sort_array[(count/2).floor]
            print("Median = ", median, "\n")
        end
    end
#first find the average of the array
    if (input == "S")
        sum = 0
        count = 0
        myarray.each do |i|
            sum += i
            count +=1
        end
        average = sum/count
#calculates the deviations of each data point from the mean
        v = 0
        myarray.each do |i|
            v = v + (i-average)**2
        end

        v = v / myarray.size
#Standard Diviation! if my formula is right haha!        
        v = Math::sqrt(v)
        puts ("Standard Divation = "'%.3f' %v.to_f)
    end
#Clears the Array if USER INPUT is C    
    if (input == "C")
        myarray.clear
        puts ("Numbers have been cleared")
        print ("[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: ")
        input = gets.chomp
    end    
end

#If USER INPUT is Q we exit
if (input == "Q")
    exit
end
