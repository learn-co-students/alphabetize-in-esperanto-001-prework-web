def alphabetize(arr)
  esp = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |phrase| 
    phrase.split("").map{|char| esp.index(char)}
  end
  
  
end

