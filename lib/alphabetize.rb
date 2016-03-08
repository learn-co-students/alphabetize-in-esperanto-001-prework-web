 ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
 
  def alphabetize(arr)
   # code here
   arr.sort_by! do |phrase|
     phrase.tr(ESPERANTO_ALPHABET, 'a-z')
   end
  end  