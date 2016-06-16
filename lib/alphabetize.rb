def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  esp_alphabet_index = (0..esperanto_alphabet.size).to_a

  esp_hash = esperanto_alphabet.zip(esp_alphabet_index).to_h

  arr.sort do |a_string,b_string|
    i = 0
    while esp_hash[a_string[i]] == esp_hash[b_string[i]]
      i += 1
    end

    esp_hash[a_string[i]] <=> esp_hash[b_string[i]]
  end
end



