ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
def alphabetize(arr)
  new_arr = arr.sort_by do |word|
    word.split('').map do |w|
      ALPHABET.index(w)
    end
  end
end