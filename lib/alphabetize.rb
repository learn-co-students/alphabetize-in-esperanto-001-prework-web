def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

  arr.sort_by do |a|
    a.split('').collect do |letter|
      alphabet.index(letter)
    end
  end
end