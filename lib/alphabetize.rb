require 'pry'

def alphabetize(arr)
	esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  newArr = arr.sort_by do |word|
  	word.split('').map do |char|
  		esperanto.index(char)
  	end
  end
end


#sort_by individual characters and their index positions within
#the esperanto array
#modify the block