def seq_gen_a(n)
    
    ans_array=[]
    x=n
    
    (n..n+3).each do
        x=x*2 - 3
        ans_array+=[x]
        
    end

    return ans_array
    
end

def seq_gen_a_alt(n)
    
    puts "Sequence a Alt"
    ans_array=[]
    num=n
    
    for x in (n..n+3) do
        ans_array+=[num*2 - 3]
        num=num*2 - 3
        
    end

    return ans_array
    
end

p seq_gen_a_alt(5)



def seq_gen_b(n,sequence=[])
    
    if sequence.count==4
        p sequence
        return sequence
    else
        sequence += [2*n - 3]
        seq_gen_b(2*n - 3, sequence)
    end
    
end

p "Sequence b"
seq_gen_b(5)
