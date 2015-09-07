require 'pry'

def alphabetize(arr)
  hash = {}
  numbered_array = []
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split(//)
  esperanto.unshift(" ")
  arr.each_with_index do |word, index|
    numbered_array[index] = word.split(//)
    numbered_array[index].each_with_index do |letter, index2|
      numbered_array[index][index2] = esperanto.index(letter)
    end
    hash[numbered_array[index]] = arr[index]
  end
  alph_array = hash.sort
  alph_array.each do |entry|
    entry.delete(entry[0])
  end
  alph_array.flatten
end



# arr[index] = ["m", "i", " ", "a", "m", "a", "s", " ", "v", "i", "n"]
# convert each value to its index key in esperanto

# arr = [["m", "i", " ", "a", "m", "a", "s", " ", "v", "i", "n"],
#  ["b", "o", "n", "a", "n", " ", "m", "a", "t", "e", "n", "o", "n"],
#  ["p", "a", "c", "o", "n"],

# esperanto = ["a", "b", "c", "ĉ", "d", "e", "f", "g", "ĝ", "h", "ĥ",
#  "i", "j", "ĵ", "k", "l", "m", "n", "o", "p", "r", "s", "ŝ", "t", "u", "ŭ", "v",
#  "z"]

# numbered version of arr = [[17, 12, 0, 1, 17, 1, 22, 0, 27, 12, 18],
 # [2, 19, 18, 1, 18, 0, 17, 1, 24, 6, 18, 19, 18],
 # [20, 1, 3, 19, 18],

 # hash = {{[17, 12, 0, 1, 17, 1, 22, 0, 27, 12, 18]=>"mi amas vin",
 # [2, 19, 18, 1, 18, 0, 17, 1, 24, 6, 18, 19, 18]=>"bonan matenon",
 # [20, 1, 3, 19, 18]=>"pacon",