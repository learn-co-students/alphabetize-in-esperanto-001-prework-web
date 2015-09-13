def alphabetize(arr)
 esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  arr.sort_by do |word|
    word.split('').map { |char| esperanto.index(char) }
  end
end