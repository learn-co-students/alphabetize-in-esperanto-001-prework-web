def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |letter|
    letter.split("").collect do |char|
      esperanto_alphabet.index(char)
    end
  end
end
