def alphabetize(arr)
  # code here
  abc = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |i|
    i.chars.map { |g| abc.chars.index(g) }
  end
end



