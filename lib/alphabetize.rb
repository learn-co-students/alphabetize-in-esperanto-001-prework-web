require 'pry'

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_array = alphabet.split(//)
  sorted_arr = arr.sort_by do |word| 
    [alpha_array.index(word[0]),
    alpha_array.index(word[1]),
    alpha_array.index(word[2]),
    alpha_array.index(word[3]),
    alpha_array.index(word[4]),
    alpha_array.index(word[5]),
    alpha_array.index(word[6])]
  end
  sorted_arr
end

alphabetize(["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"])