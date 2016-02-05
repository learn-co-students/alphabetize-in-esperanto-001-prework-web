def alphabetize(words)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  words.sort_by do |word|
    word.chars.collect {|c| alphabet.index(c)}
  end
end