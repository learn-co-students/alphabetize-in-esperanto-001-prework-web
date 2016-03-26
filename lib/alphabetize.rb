def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  # ALPH index of each letter in hash, e.g. a = 0, ĉ = 3
  alphabetHash = alphabet.each_char.with_index.to_a.to_h

  arr.sort_by do |phrase|
    phrase.chars.map {|char| alphabetHash[char] }
  end
end