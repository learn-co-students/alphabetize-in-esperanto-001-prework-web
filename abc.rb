ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
abc = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
#ESPERANTO_ALPHABET.each{|i|puts i}
def alphabetize(arr)
  # code here
  abc = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars


  #arr.sort_by do i
   # imap { |g| abc.index(g) }
  #end
end

abc.sort_by do |i|
  i.chars.map { |g| abc.index(g) }
  end