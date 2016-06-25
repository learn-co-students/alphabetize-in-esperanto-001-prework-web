require 'pry'

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split(//)
  arr.sort_by! do |phrase|
    phrase.chars.map do |char|
      alphabet.index char
    end
  end
end