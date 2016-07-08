  ESPERANTO = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


def alphabetize(arr)
  # code h
  hash = {}
  ESPERANTO.chars.each_with_index{|letter, index| hash[letter] = index + 1}

arr.sort_by do |x|
   rep = x.chars
   rep.delete(" ")
   rep.map { |let| hash[let]}
end 




end 