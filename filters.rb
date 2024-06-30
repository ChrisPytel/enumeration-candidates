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
  
# experienced? Takes in a single candidate (hash). Note: not the entire array.
# Returns true if the candidate has 2 years of experience or more. Returns false otherwise
def experienced?(candidate)
  # puts "candidate is a", candidate.class    

  if candidate[:years_of_experience] > 2
    puts 'person has over 2 yrs'
    return true
  else 
    puts 'person dont got enuf xp'
    return false
  end    
end 
# ------------------------------------------------------------------------------------------------
  
  def qualified_candidates(candidates)
    # Your code Here
  end
  
  # More methods will go below