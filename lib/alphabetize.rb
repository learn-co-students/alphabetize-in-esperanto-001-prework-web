def alphabetize(arr)
  # code here
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha_hash = {}
  alpha = ('a'..'z').to_a
  alpha = (1..8).to_a.map{|i| i.to_s} + alpha
  esperanto_alphabet.split('').each.with_index do |e_letter, idx|
    alpha_hash[e_letter] = alpha[idx]
  end
  alpha_hash[" "] = " "
  trans_array = []
  arr.each do |word|
    trans_word = ''    
    word.split('').each do |letter|      
      trans_word << alpha_hash[letter]      
    end
    trans_array << trans_word
  end  
  trans_array = trans_array.sort  
  sorted_array = []
  trans_array.each do |word|
    sorted_word = ''
    word.split('').each do |letter|
      sorted_word << alpha_hash.key(letter)
    end
    sorted_array << sorted_word
  end  
  return sorted_array
end