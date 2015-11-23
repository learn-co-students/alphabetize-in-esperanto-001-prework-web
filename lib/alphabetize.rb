require 'pry'
def alphabetize(arr)
  esper_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |word|
    word.split('').collect do |letter|
      esper_alphabet.index(letter)
      #binding.pry
    end
  end
  #binding.pry
end


