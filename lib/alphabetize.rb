ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
   esp_al = ESPERANTO_ALPHABET.split("")
  esp_hash = {}
  esp_arr = []
  esp_arr_final = []
  esp_alpha = []
  counter = 1
  esp_al.each do |letter|
  	esp_alpha << letter.byteslice(0)
  end
  #binding.pry
  esp_alpha.each do |letter|
  	if counter < 10
  		esp_hash[letter] = "0#{counter}"
  	else
  		esp_hash[letter] = counter
  	end
  	counter += 1
  end
  arr.each do |word|
  	#binding.pry
  	esp_hash.each do |letter, number|
  		#binding.pry
  		if word.byteslice(0) == letter
  			esp_arr << "#{number}#{word}"
  		end
  	end
  end
  esp_arr.sort!
  esp_arr.each do |word|
  	esp_arr_final << word[2..-1]
  end
  esp_arr_final
  #binding.pry# code here
end

esp_array = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]