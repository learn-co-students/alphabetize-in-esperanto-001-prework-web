require 'pry'

def alphabetize(arr)
  arr.sort_by { |word| word.split('').map {|letter| "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".index(letter)}}
end
