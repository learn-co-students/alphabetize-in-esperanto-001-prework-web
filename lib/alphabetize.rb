def alphabetize(arr)
  arr.sort_by! do |phrase|
    phrase.chars.map { |char| "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars.index(char) }
  end
end