ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr = arr.sort_by do |a|
    a.chars.map do |b|
      ESPERANTO_ALPHABET.index(b)
    end
  end
  arr
end