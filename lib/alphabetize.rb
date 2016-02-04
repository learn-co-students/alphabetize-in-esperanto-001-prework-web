def alphabetize(arr)
  # puts "arr #{arr}"
  arr_array = []
  arr.each do |array|
    arr_hash = {}
    arr_hash["english"] = array.tr("ĉĝĥŝŭ", "cghsu")
    arr_hash["esperanto"] = array
    arr_array << arr_hash
  end
  puts "array #{arr_array}"  
  arr_array = arr_array.sort_by { |array| array["english"]}
  puts "array after sort #{arr_array}"
  sorted = []
  arr_array.each do |array|
    sorted << array["esperanto"]
  end
  sorted
end

  # ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
