require 'pry'

def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_hash = {}
  esperanto_alphabet = esperanto_alphabet.split("")
  esperanto_alphabet.each_with_index do |letter, index|
    esperanto_hash[letter] = (index + 1)
  end
  arr.sort_by do |word| 
    word.split("").collect do |letter|
      esperanto_hash[letter]
    end
  end
end