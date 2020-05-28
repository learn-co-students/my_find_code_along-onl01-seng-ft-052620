require 'pry'

def my_find(collection)
  index = 0 
  while index < collection.length 
  if yield(collection[index])
    return (collection[index])
  end 
  index += 1 
  end 
end