# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# find(id) Returns the candidate with that :id
# If there is no candidate with that id, it naturally returns nil
def find(id)
  puts "ID number to check is: #{id}"

  for candidate in @candidates
    # puts "This candidate is: "
    # pp  candidate
    puts "ID for this candidate is: #{candidate[:id]}"
    if candidate[:id] == id
      puts "gotta match"
      return candidate      
    end 
  end
  return nil; # return nil is implicit, but added here as a reminder
end 
# ------------------------------------------------------------------------------------------------
  
  
  def experienced?(candidate)
    # Your code Here
  end
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below