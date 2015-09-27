require 'pry'
def alphabetize(arr)
  # code here
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_alphabet = esperanto_alphabet.split("")

  esperanto_hash = {}
  esperanto_alphabet.each_with_index do |letter, index|
    esperanto_hash[letter] = index
  end


  sorted_list = arr.sort_by do |word|
    esperanto_hash.index(word)
  end


  #binding.pry
  sorted_list
end