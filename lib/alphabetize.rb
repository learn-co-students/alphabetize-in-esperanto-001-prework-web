ESP_MAP =   { "a" => 1,  "b" => 2,  "c" => 3,  "ĉ" => 4,
              "d" => 5,  "e" => 6,  "f" => 7,  "g" => 8,
              "ĝ" => 9,  "h" => 10, "ĥ" => 11, "i" => 12,
              "j" => 13, "ĵ" => 14, "k" => 15, "l" => 16,
              "m" => 17, "n" => 18, "o" => 19, "p" => 20,
              "r" => 21, "s" => 22, "ŝ" => 23, "t" => 24,
              "u" => 25, "ŭ" => 26, "v" => 27, "z" => 28}

def alphabetize(arr=[])
  arr.sort do |a,b|
    w = comp_point(a,b)
    ESP_MAP[a.split("")[w]] <=> ESP_MAP[b.split("")[w]]
  end
end

def comp_point(str1, str2)
  return 0 if str1 == str2
  str2 = str2.split("")
  str1.split("").each.with_index {|x,i| return i if x != str2[i]}
end