require 'pry'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  # code here
  comparison_array = []
  word_array = []
  # add word and values to new array
  arr.each do |word|
    comparison_array << [word, ESPERANTO_ALPHABET.index(word[0]) ]
  end
  # compare first-letter values to alphabet
  comparison_array = comparison_array.sort_by do |word,val|
    val
  end
  comparison_array.each do |key, value|
    word_array << key
  end
  word_array
end
  

# use index values of esperanto string
# compare the first letter of each string to esperanto
# make a hash with word : index of first letter
# sort hash by the value
# if 2 values are the same, compare the next letter until 1 is larger
# push keys to an array in order


   #binding.pry
      # if value == comparison_array[comparison_array.index(item) - 1][1] && comparison_array.index(item) > 0
      #   wrd = comparison_array[comparison_array.index(item) - 1][0]
      #   if key[1] < wrd[1]
      #     temp = comparison_array[comparison_array.index(item) - 1]
      #     comparison_array[comparison_array.index(item) - 1] = item
      #     comparison_array[comparison_array.index(item)] = temp
      #   end
      # end
    #end

      # comparison_array = comparison_array.each do |item|
  #   if comparison_array.index(item) > 0 && item[0][0] < comparison_array[comparison_array.index(item) - 1][0]
  #     temp = item
  #     comparison_array[comparison_array.index(item)] = comparison_array[comparison_array.index(item) - 1]
  #     #binding.pry
  #     comparison_array[comparison_array.index(item) - 1] = temp
  #   end
  # end