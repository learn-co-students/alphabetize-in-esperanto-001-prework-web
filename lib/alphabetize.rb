ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

#Build hash of alphabet characters so lookup is O(1)
def build_character_hash(alphabet_string)
  character_hash = {}

  alphabet_string.each_char.with_index do |char, index|
    character_hash[char] = index
  end

  character_hash
end

def alphabetize(arr)
  esperanto_alphabet_hash = build_character_hash(ESPERANTO_ALPHABET)

  arr.sort_by do |phrase|
    phrase.chars.map do |c|
      esperanto_alphabet_hash[c]
    end
  end

end
