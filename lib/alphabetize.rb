def alphabetize(arr)
	alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
    arr.sort_by! do |x|
  		word_index = x.delete(" ").chars
  		index_values = []
  		word_index.each do |y|
  			points = alphabet.index(y)
  			index_values << points
  		end
  		index_values
  	end
  	arr
end