def alphabetize(arr)
  # code here
  e_a = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |esperanton_phrase|
    esperanton_phrase.chars.map do |i|
      e_a.chars.index(i)
    end
  end
end
