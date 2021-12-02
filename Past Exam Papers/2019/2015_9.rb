class Integer
    def is_prime?
        
        if self<2
            return false
        end
        
        if self==2
            return true
        end
        
        for div in (2..self-1) do
           
           if self%div==0
               return false
               break
            end
           
        end
           
           return true
        
    end
end
    
def check_prime_1(n)
    
    prime_array=[]
    
    if n>1
        for num in (0..n) do
            
            if num.is_prime?
                prime_array+=[num]
            end
            
        end
    end
    return prime_array
end


def check_prime_2(n,prime_array=[])
    
    if n==1
        return prime_array.reverse
    
    else
        
        if n.is_prime?
            prime_array+=[n]
        end
        check_prime_2(n-1,prime_array)
    end
end


def actual_check_prime1(number_of_primes_to_find)
    
    number_of_primes_to_find_array=[]
    current_value=1
    while number_of_primes_to_find_array.count<number_of_primes_to_find do
    
        
        if current_value.is_prime?
            puts "This is a prime: "+current_value.to_s
            number_of_primes_to_find_array+=[current_value]
        end
        
        current_value+=1

    end
        
    return number_of_primes_to_find_array
end
    
    
def actual_check_prime2(find_this,at_value=1,prime_list=[])
    
    if prime_list.count==find_this
        
        for prime in prime_list
            puts "This is prime: "+prime.to_s
        end
        return prime_list
        
    else
        if at_value.is_prime?
            prime_list+=[at_value]
        end
        
        at_value+=1
        
        actual_check_prime2(find_this,at_value,prime_list)

    end
end

p check_prime_1(10)

p check_prime_2(20)

p actual_check_prime1(20)

p actual_check_prime2(20)
