
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  
  arr = arr.sort_by {|phrase| phrase.split("").map {|i| ESPERANTO_ALPHABET.index(i)}}

end
