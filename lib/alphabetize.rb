# class Esperanto_String
#   attr_accessor :string

#   def get_char_value(char)
#     case char
#       when 'a' then 1
#       when 'b' then 2
#       when 'c' then 3
#       when 'ĉ' then 4
#       when 'd' then 5
#       when 'e' then 6
#       when 'f' then 7
#       when 'g' then 8
#       when 'ĝ' then 9
#       when 'h' then 10
#       when 'ĥ' then 11
#       when 'i' then 12
#       when 'j' then 13
#       when 'ĵ' then 14
#       when 'k' then 15
#       when 'l' then 16
#       when 'm' then 17
#       when 'n' then 18
#       when 'o' then 19
#       when 'p' then 20
#       when 'r' then 21
#       when 's' then 22
#       when 'ŝ' then 23
#       when 't' then 24
#       when 'u' then 25
#       when 'ŭ' then 26
#       when 'v' then 27
#       when 'z' then 28
#       when ' ' then 29
#     end
#   end
#   def initialize(string)
#     @string = string
#   end
#   def <=>(other_string)
#     @string.chars.each_with_index do |char, index|
#       return 1 if get_char_value(char) < get_char_value(other_string.string[index])
#       return -1 if get_char_value(char) > get_char_value(other_string.string[index])
#     end
#     return 0
#   end
# end

# def alphabetize(arr)
#   arr.sort {|word1, word2| Esperanto_String.new(word2) <=> Esperanto_String.new(word1)}
# end

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by {|item| item.chars.map{|char| alphabet.index(char)}}
end