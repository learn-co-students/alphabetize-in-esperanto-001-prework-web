def alphabetize(array)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

  array.sort_by do |word|
    [
      esperanto_alphabet.index(word[0]), 
      esperanto_alphabet.index(word[1]),
      esperanto_alphabet.index(word[2]),
      esperanto_alphabet.index(word[3]),
      esperanto_alphabet.index(word[4]),
      esperanto_alphabet.index(word[5]),
      esperanto_alphabet.index(word[6])
    ]
    
  end

end