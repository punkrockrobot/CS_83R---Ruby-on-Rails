=begin
Brian Worth
1830
10/9/2020
Checker for User and PW validation
=end

def credentials (use)
    if (use =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$/)
        puts "The Username is valid!"
    elsif (use =~ /\s/)
        puts "The Username cannot contain a space"
    elsif (use =~ /\W/)
        puts "The Username cannot contain a special character"
    elsif(use =~ /^(?:.{0,7})$/)
        puts "The Username must be 8 Characters Long" 
    elsif(use !~ /^(?=.*?[0-9])$/)
        puts "The Username must contain a number"      
    end
end

def passcheck (use, pass)
    if (pass == use)
        puts "Password can't match Username"
    elsif (pass =~ /\s/)
        puts "The Password cannot contain a space"
    elsif (pass =~ /\W/)
        puts "The Password cannot contain a special character"
    elsif (pass !~ /^(?=.*?[0-9])$/)
        puts "The Password must contain a number"
    elsif(pass =~ /^(?:.{0,7})$/)
        puts "The Password must be 8 Characters Long"  
    elsif(pass =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$/) 
        puts "The Password is valid!"
    end
end

print "Enter Username: "
user = gets.chomp
credentials(user)
print "Enter Password: "
password = gets.chomp
passcheck(user,password)