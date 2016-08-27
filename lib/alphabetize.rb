
#/[ĉĝĥĵŝŭ]/
def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |phrase| 
    phrase.split("").collect {|char| alphabet.index(char)}
  end	
end

