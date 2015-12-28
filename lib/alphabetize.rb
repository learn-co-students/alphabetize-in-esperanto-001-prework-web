require 'pry'
require 'pry-nav'
ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  
  esperanto_array = ESPERANTO_ALPHABET.split(//)
  esperanto_array.unshift(" ")
  
  esperanto_values = {}
  value_counter = "00"
  
  esperanto_array.each do |character|
    esperanto_values[character] = value_counter
    value_counter = value_counter.next
  end
  
  sorted = arr.sort_by do |phrase|
    characters = phrase.split(//)
    phrase_character_values = []
    characters.each do |character|
      phrase_character_values << esperanto_values[character]
    end

    phrase_sort_value = phrase_character_values.join
    phrase_sort_value
  end
 
  sorted
end