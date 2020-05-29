require 'pry'

# DOES NOT CALL ON FIND
# CAN HANDLE EMPTY COLLECTION
# YIELDS CORRECT ELEMENT TO THE BLOCK (NUMBER)
# RETURNS THE ELEMENTS FROM THE ARRAY WHEN THE BLOCK CONDITION IS MET
# RETURNS NIL WHEN BLOCK CONDITION NOT MET


def my_find(collection)
    i = 0
    while i < collection.length
        return collection[i] if yield(collection[i])
        i += 1
    end
end
        
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 } #=> 15