class PigLatinizer 

  def initialize(user_phrase = "Flatiron school")
    @user_phrase = user_phrase.downcase
  end
  
  def find_v(input)
    letter_array = input.split('')
    index = ''
    answer = letter_array.find do |a| 
      if a == "a" || a == "e" || a == 'i' || a == "I" || a == "o" || a == 'u'
      index = input.index(a)
      
    end
    end  
  end
  
 def piglatinize(user_phrase)
  array = user_phrase.split(" ") 
  piggy = array.map do |word| 
        a = word[0]
    if word.length == 1 
      word << "way" 
    
    elsif a == "a" || a == "e" || a == 'E' ||  a == 'i' || a == "I" || a == "o" || a == 'O' || a == 'u'  
        word << 'way'
    elsif  
      first_vowel = find_v(word) 
      index = word.index(first_vowel)
      end_of_word = word[index ..(word.length - 1)]
      index <= 0 ? start_of_word = word[0] : start_of_word = word[0..index - 1]
      start_of_word << "ay" 
    end_of_word << start_of_word 
    end_of_word
      
      end
    
  end
  piggy.join(" ")
 end 
end