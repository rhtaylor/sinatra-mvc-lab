class PigLatinizer 

  def initialize(user_phrase = "Flatiron school")
    @user_phrase = user_phrase.downcase
  end
  
  def vowels(param)
    index = ''
    
    (param.length <= 1) ? p = param[0].split('') : p = param.split('')
    p.find do |x|
            if (p[0] == 'a' || p[0] =='A' || p[0] =='e' || p[0] =='E'|| p[0] == 'i' || p[0] =='I'|| p[0] == 'o' || p[0] =='O' || p[0] =='u' || p[0] =='U')
                p << "way" 
               return p.join
          elsif p.include?('t') && p.include?("h")
              t = p.index('t') 
              h = p.index('h')
              aurry = p[t.. h] 
              m = p[(h + 1)..(p.length-1)]
              m << aurry
              m << "ay"
              
              return m.flatten.join
          elsif p.include?('u') && p.include?('n')
            p << "way"
           return p.flatten.join
          elsif p.include?("t")
            @index = p.index(x)
            @num = @index.to_i
             b_array = p[0..@num]
             @num == 0 ?  a_array = p[0] : a_array = p[0..@num-1]
            
            
            
             ed_array = p[(@num + 1 )..(p.length - 1)]
       
             ed_array
             a_array << "ay"
             ed_array << a_array
             
            return ed_array.flatten.join('') 
      elsif p.include?('i') && p.count <= 1 || p.include?("I") && p.count <= 1
            p << "way"
        return p.flatten.join
      elsif x == "a" || x == "e" || x == "o" || x == "u" 
        @index = p.index(x)
        @num = @index.to_i
     
          end 
        end
      b_array = p[0..@num]
       @num == 0 ?  a_array = p[0] : a_array = p[0..@num-1]
      
      ed_array = p[@num..(p.length - 1)]
      
      ed_array
      a_array << "ay"
      ed_array << a_array
      
      ed_array.flatten.join('') 
      
    end 
    def piglatinize(input)
    b = input.split(" ")
    
    if b.count > 1 
        b.map! do |x|
        c = vowels(x)
        
         end 
        b.flatten.join(' ') 
     else
        c = vowels(b)
  
      end
    
    end
end