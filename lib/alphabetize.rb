ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr) 
	return arr.sort_by! {|excerpt| excerpt.tr(ESPERANTO_ALPHABET, '1-2a-z')}
end

alphabetize(["bonan matenon", "bonan nokton", "bonan vesperon"])
puts "\n\n"
alphabetize(["mi amas vin", "ĉu vi parolas esperanton", "bonan matenon", "pacon"])
