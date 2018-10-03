#write your code here
def pyramid(height) 
    count = 1
    
    height.times{
        blocks = "#"*count
        spaces = " "*(height-count)
        count += 1
        puts spaces+blocks+"  "+blocks    
    }
end


def inverse_pyramid(height)
    count = height
    height.times{
        spaces = " "*(height-count)
        blocks = "#"*count
        count -= 1
        puts spaces+blocks+"  "+blocks
    }
end



def singular_pyramid()
    puts "How high would you like your pyramid to be"
    user_height = gets.chomp.to_i
    
    unless user_height>23 
        pyramid(user_height)
    else
        puts "Pyramids only go as high as 23 in mario world!"
    end
end


def multiple_pyramids
    puts "How high would you like your pyramids to be?"
    user_height = gets.chomp.to_i
    unless user_height>23 
        puts "How many pyramids would you like?"
        pyramid_count = gets.chomp.to_i
        
        inverse= false
        
        pyramid_count.times{
            if inverse 
                inverse_pyramid(user_height)
                inverse = false
            else 
                pyramid(user_height)
                inverse = true
            end
        }  
    else
        puts "Pyramids only go as high as 23 in mario world"
    end 
    
end



multiple_pyramids()



