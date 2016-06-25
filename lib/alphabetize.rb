require 'pry'

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split(//)
  arr.sort_by! do |phrase|
    phrase.chars.map do |character|
      alphabet.index character
    end
  end
end