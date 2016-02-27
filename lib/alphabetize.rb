
ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr) 
  alphabet = ALPHABET.split("")
    arr.sort_by! do |phrase|
    (phrase.split("").collect {|letter| alphabet.index(letter)}).compact
  end
end
