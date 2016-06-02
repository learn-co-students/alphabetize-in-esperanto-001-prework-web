require 'pry'

arr0 = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
arr1 = ["ĝuste", "ĝis revido"]
arr2 = ["bonan matenon", "bonan vesperon", "bonan nokton"]
arr3 = ["ŝĝĉĥŭĵ", "ŝĝĉĥŭĉ", "ŝĝĉĥŭĥ"]

def alphabetize(arr)
  # code here
  alph = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  res = arr.sort_by do |phrase|
    phrase.split("").map do |letter|
      alph.index(letter)
    end
  end
  res
end

# alphabetize(arr1)