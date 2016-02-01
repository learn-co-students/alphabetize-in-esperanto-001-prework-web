require 'pry'
def alphabetize(arr)

  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_arr = alphabet.split("")
  split_arr = []
  arr.each do |word| 
    split_arr << word.split("")
  end

  order_hash = {}
  split_arr.each do |word|
    order_hash["#{word.join}"] = []
    i = 0
    while i < word.length
      if alpha_arr.index(word[i]) == nil
        order_hash["#{word.join}"] << -1
      else order_hash["#{word.join}"] << alpha_arr.index(word[i])
      end
      i += 1
    end
  end
   
  final_arr = []
  order = order_hash.sort_by {|k, v| v }
  order.each do |element|
    final_arr << element[0]
  end

  final_arr

end