def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |word|
    word.chars.map do |c| 
      alphabet.index(c)
    end
  end
end

