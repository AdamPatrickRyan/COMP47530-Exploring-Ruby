1.
prints "hammy hamster" => nil
prints "hammy hamster" => nil

//
2.
a = "foo"; p a.to_sym
:foo


//
3. ["1","2", 3].instance_of?(String)
false

//
4.["a","b,"c"].instance_of?(Array)
-> Error


//
5. class NoClass
end
p NoClass.new

Instance of a NoClass

//
6.[1,2,3].each
Enumerator (nil)


//
7. ["a","b","c"].collect{|item| puts item + “a”}
aa
aa
ca
=>[nil, nil, nil]

//
8.baDDarT.downcase
error



//
9. ["a1","2","c33"].select {|item| item.size == 2}
["a1"]


// [[2,3],[[[3]],[4,5]]].length
10. 2

//
11. [1,2,[3,4],4,2,[[3,[6,2,1]]],145,4,3,2].flatten
[1,2,3,4,4,2,3,6,2,1,145,4,3,2]

12. Float.new
Error

13. "fooble".concat("doodle")
"foobledoodle"

14. ['fooble'] << ['doodle']
["fooble", ["doodle"]]


15. "fooblinggg".chomp.chop.chop
"foobling"

16. baDDarT.upcase
Error

17."apples_oranges_lemons".split(/ /)
["apples_oranges_lemons"]

18 "1234" <=> "12345"
-1

19. Regexp.new("eeeeeeek")
/eeeeeeek/

20 [6,3,2,1].inject{|x,y| x / y}
1
