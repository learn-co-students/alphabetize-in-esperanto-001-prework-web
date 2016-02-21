require 'pry'
def alphabetize(arr)
	alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  sorted_array = arr.sort_by do |word|
  	word_arr = []
  	word.each_char { |chr| word_arr << alphabet.index(chr) }	
  	word_arr
  end
  sorted_array
end