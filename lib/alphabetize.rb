require 'pry'

def alphabetize(arr)
  esperanto_array = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  arr.sort_by do |word| 
    word.split('').map { |letter| esperanto_array.index(letter) }
  end
end
