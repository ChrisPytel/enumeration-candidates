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

# Takes in the collection of candidates
# Returns a subset of the candidates that meet the following criteria:
#     Are experienced
#     Have 100 or more Github points
#     Know at least Ruby or Python
#     Applied in the last 15 days
#     Are over the age of 17 (18+)
def qualified_candidates(candidates)
  aproved_candidates = [];

  candidates.each do |candidate|
    puts "Checking candidate:", candidate

    if candidate[:years_of_experience] >= 1 &&
      candidate[:github_points] >= 100 &&
      knowsRubyOrPython(candidate[:languages]) &&
      (Date.today - candidate[:date_applied]).to_i <= 15 &&
      candidate[:age] > 17

      puts "👍 Candidate met requirements"
      aproved_candidates.push(candidate)        
    else
      puts "❌ Candidate doesnt meet requirements"
    end
    puts " "
  end
  
  puts "📑 Heres a report of all aproved candidates"
  return aproved_candidates
end
# ------------------------------------------------------------------------------------------------

# Refactored logic out of qualified_candidates
def knowsRubyOrPython(candidateSkills)
  puts "languages for this candidate are #{candidateSkills}"

  for language in candidateSkills
    # puts "Checking lang: #{language}"

    if language == "Ruby" || language == "Python"
      puts "This person knows ruby or python!"
      return true;
    end
  end
  return false;
end