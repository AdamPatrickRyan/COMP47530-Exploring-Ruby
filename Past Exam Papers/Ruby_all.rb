class Numeric
   
   def is_prime?
       
       if self<2
           return false
           
        end
       
       if self==2
           return true
        end
       
       if self>2
           for div in (2..self-1) do
               if self%div==0
                   return false
               end
            end
            
            return true
        end
    end
end
   
   
   
   
def prime_get(numbers_to_get)
    
    if numbers_to_get==1
        return [2]
    end
    
    prime_array=[]
    k=1
    
    while prime_array.length<numbers_to_get do
        
        if k.is_prime?
            prime_array+=[k]
            k+=1
        else
            k+=1
        end
        
    end
    
    return prime_array
        
end
    
    
    def prime_get_2(numbers_to_get,current_value=1,prime_array=[])
        
        if numbers_to_get==prime_array.count
            return prime_array
        
        else
        
            if current_value.is_prime?
                prime_array+=[current_value]
            end
            
            prime_get_2(numbers_to_get,current_value+1,prime_array)
            
            end
            
    end

    
    
def pluralise(symbol_array)
        
        symb_array=[]
        
        symbol_array.each do |word|
            
            str_word=word.to_s
            
            if str_word[-1, 1]=='a'
                str_word+='e'
            elsif str_word[-1, 1]=='i'
                str_word+='s'
            else
                str_word=str_word
            end
            
            symb_array+=[str_word.to_sym]
            
        end
        
        return symb_array
        
end
        
    
def pluralise_sub(symbol_array)
    
    symb_array=[]
    
    for word in symbol_array
        
        str_word=word.to_s
        
        result_string=str_word
        result_string=result_string.sub(/a\b/,'ae')
        result_string=result_string.sub(/\i\b/,'is')
        
        symb_array+=[result_string.to_sym]
        
    end
    
    return symb_array
    
end
    
    
def past_tense(symb_array)
    
    return_array=[]
    for word in symb_array do
        
        str_word=word.to_s
        
        if str_word[-1, 1]=='e'
            str_word=str_word+'d'
            
        else
            str_word+='ed'
        end
        
        return_array+=[str_word.to_sym]
    end
        
    return return_array
    
    
end


def past_tense_sub(symb_array)
    
    return_array=[]
    for word in symb_array do
        
        str_word=word.to_s
        
        result_str=str_word
        result_str=result_str.sub(/[^e]\b/, result_str[-1,1]+'ed')
        result_str=result_str.sub(/e\b/, 'ed')
        
        return_array+=[result_str.to_sym]
                
    end

    return return_array
    
end
    
p prime_get(10)

p prime_get_2(10)

p pluralise([:alpha,:kappa,:beta,:phi])

p pluralise_sub([:alpha,:kappa,:beta,:phi])

p past_tense([:kiss, :change, :test, :boo])

p past_tense_sub([:kiss, :change, :test, :boo])
