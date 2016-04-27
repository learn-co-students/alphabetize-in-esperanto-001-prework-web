def alphabetize(arr)
  # code here
  #alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
 
   #alphahash = alphabet.each_char.with_index.to_h
 
   #arr.sort_by do |phrase|
   #  phrase.chars.collect {|char| alphahash[char]}
   abc = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
   arr.sort_by do |i|
     i.chars.map { |g| abc.chars.index(g) }

  end
end