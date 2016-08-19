def alphabetize(arr)
  # code here
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by { |phrase| phrase.chars.collect {|c| esperanto.index(c)}}
end

#I found this code on stack overflow: http://stackoverflow.com/questions/28368857/how-to-sort-an-array-of-accented-words-in-ruby