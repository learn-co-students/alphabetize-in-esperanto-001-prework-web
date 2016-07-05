def alphabetize(arr)
alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
alphabet_array = alphabet.chars

arr.sort_by {|phrase|
phrase.chars.map {|letter|
  alphabet_array.index(letter)}}

end
