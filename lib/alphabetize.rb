def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |phrase|
    index_arr = []
    for i in 0.upto(phrase.split.join.length - 1) do
      index_arr << alphabet.index(phrase.split.join[i])
    end
    index_arr
  end
end