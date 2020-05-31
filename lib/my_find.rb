require 'pry'

def my_find(collection)
    i = 0
    while i < collection.length
        # yield(collection[i])
        # if yield(collection[i])
        #     return collection[i]
        #   end
        # better way to write the above if statement: 
        return collection[i] if yield(collection[i]) 
        i += 1
    end
end