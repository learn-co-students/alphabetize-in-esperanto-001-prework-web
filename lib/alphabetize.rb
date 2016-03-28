def alphabetize(arr)
  # code here
  abc = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


  arr.sort_by do |i|
    i.chars.map { |g| abc.chars.index(g) }
  end
end



=begin
def alphabetize(phrases)
  alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars

  phrases.sort_by do |phrase|
    phrase.chars.map { |c| alpha.index(c) }
  end
end
=end
