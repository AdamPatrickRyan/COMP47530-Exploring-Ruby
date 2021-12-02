def pluralise_one(sym_array)
    
    return_array=[]
    
    for symb in sym_array do
        symb_string=symb.to_s
        string_index=symb_string.length
        last_character=symb_string[string_index - 1]
        
        if last_character=="a"
            return_string=symb_string[0,string_index] + "e"
            return_array+=[return_string.to_sym]
            
        elsif last_character=="i"
            return_string=symb_string[0,string_index] + "s"
            return_array+=[return_string.to_sym]
            
        else
            symb_string=symb_string

        end
        

        
    end
   
   p return_array
   return return_array
end

    
pluralise_one([:alpha,:beta,:kappa,:phi])
    
def pluralise_sub(sym_array)
    
    new_return_array=[]
    
    sym_array.each do |symb|
        
        symb_string=symb.to_s
        string_index=symb_string.length
        
        return_string=symb_string.sub(/i\b/,"is")
        return_string=return_string.sub(/a\b/,"ae")
        
        new_return_array+=[return_string.to_sym]
        

        
    end
   
   p new_return_array
   return new_return_array
end


pluralise_sub([:alpha,:beta,:kappa,:phi])


def number_of(sym_array)
    
    return_array=[]
    
    sym_array.each do |symb|
        symb_string=symb.to_s
        string_index=symb_string.length
        return_array+=[symb_string.length]
        
    end
   
   p return_array
   return return_array
end

number_of([:alpha,:beta,:kappa,:phi])


def past_tense_sub(sym_array)

    
    new_return_array=[]
    
    sym_array.each do |symb|
        
        symb_string=symb.to_s
        string_index=symb_string.length
        
        return_string=symb_string.sub(/[^e]\b/,symb_string[-1]+"ed")
        return_string=return_string.sub(/e\b/,"ed")
        
        
        
        new_return_array+=[return_string.to_sym]
        

        
    end
   
   p new_return_array
   return new_return_array
end


past_tense_sub([:kiss, :change, :test])
