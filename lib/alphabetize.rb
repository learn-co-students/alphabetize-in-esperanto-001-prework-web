def alphabetize(arr)
  # code here
 esp_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split(//)
   arr.sort_by! do |phrase|
     phrase.chars.map do |character|
       esp_alphabet.index(character)
     end
   end
end