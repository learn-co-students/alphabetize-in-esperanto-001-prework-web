def alphabetize(array)
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

  array.sort_by do |word|
    i = 0
    sort_by_array = []

    word.length.times do
      sort_by_array << esperanto_alphabet.index(word[i])
      i += 1
    end
    
    sort_by_array
  end

end