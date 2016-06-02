def alphabetize(arr)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  esperanto_array = esperanto.chars
  arr.sort_by do |i|
    i.chars.collect do |char|
      esperanto_array.index(char)
    end
  end
end