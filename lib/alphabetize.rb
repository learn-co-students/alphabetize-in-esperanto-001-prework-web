def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  alphahash = alphabet.each_char.with_index.to_h

  arr.sort_by do |phrase|
    phrase.chars.collect {|char| alphahash[char]}
  end
end