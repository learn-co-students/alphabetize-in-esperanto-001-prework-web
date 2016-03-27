require 'pry'

def alphabetize(arr)
alphabet = 'abcĉdefgĝhĥijĵklmnoprsŝtuŭvz'
ralphabet= 'ABabcdefghijklmnopqrstuvwxyz'

arr.sort_by{|string| string.tr(alphabet,ralphabet)}
 end



def alphabetize_everything(arr) #Alphabetized every letter in every word to the ESPERANTO ALPHABET
alphabet = 'abcĉdefgĝhĥijĵklmnoprsŝtuŭvz'
alphabetHash={}
alphabet.split('').each_with_index do |char, i|
   alphabetHash[char]=i
  end
newminiWord=[]
finalarr=[]
semifinalword=[]
finalwords=[]
arr.each do |words|
    miniwords=words.split(' ')
    miniwords.each do |miniword|
     letters=miniword.split('')
newWord=[]
    letters.each do |letter|
            if  alphabetHash.has_key?(letter)
             newWord<<alphabetHash[letter]
            end
         end
           newWord.sort.each do |letter|
           semifinalword<<alphabetHash.key(letter)
           end
       newWord.clear
       newminiWord=semifinalword.join
       finalwords<< newminiWord
       semifinalword.clear
      end
finalarr<<finalwords.join(" ")
      finalwords.clear
    end
finalarr.join(" ")
 end

#{"a"=>0, "b"=>1, "c"=>2, "ĉ"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "ĝ"=>8, "h"=>9, "ĥ"=>10, "i"=>11, "j"=>12, "ĵ"=>13, "k"=>14, "l"=>15, "m"=>16, "n"=>17, "o"=>18, "p"=>19, "r"=>20, "s"=>21, "ŝ"=>22, "t"=>23, "u"=>24, "ŭ"=>25, "v"=>26, "z"=>27}


