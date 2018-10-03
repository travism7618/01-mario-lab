#write your code here
def pyramid(height) 
    blocks = "" #this will be the amount of blocks on one side of the pyramid for the line that is being puts
        height.times{
            blocks = blocks+"#"   #adds one '#' each line
            space_count = height - blocks.length   #this variable is the amount of space before the program begins printing '#'s on the line. Orginally the amount of space is equal to the maximum amount of blocks being printed within one line of the pyramid minus one, but its count decreases with each line.
            
            space = "" #the string that is actually the space will be reset through every loop
            
            #down below is the space being added to the above variable based on the amount of space (or space count) that will be needed on that line
            
            space_count.times{
                space = space + " "
            } 
            
            puts "#{space}#{blocks}  #{blocks}"
        }
end

def inverse_pyramid(height)
    block_count = height
    spaces_count = 0
    
    height.times{
        blocks = ""
        block_count.times{
                blocks = blocks + "#"
                }
        block_count -= 1
        
        spaces = ""
        spaces_count.times{
            spaces = spaces + " "
        }
        spaces_count+=1
        
        puts "#{spaces}#{blocks}  #{blocks}"
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



