require 'pry'

def my_find(collection)
  index = 0 
  
   while index < collection.length 
  # if yield(collectin[index])
  #   return collection[index]
  # end
return collection[index] if yield(collection[index])
    index +=1 
   end
end

