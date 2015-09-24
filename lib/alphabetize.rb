def alphabetize(arr)
    alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

    arr.sort_by do |word|
      word.split('').map {|letter| alphabet.index(letter)}
    end
  end 

