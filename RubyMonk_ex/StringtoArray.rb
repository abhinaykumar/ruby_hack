def Array_of_String_to_Array_of_integer(string)
    string.map {|x| x.to_i}
end

p Array_of_String_to_Array_of_integer(["1","2","3"])
