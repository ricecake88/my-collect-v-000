
def my_collect(array)
  i = 0
  collections = []
  while i < array.length
     collections << yield(array[i])
     i += 1
  end
  return collections
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
newArray = my_collect(array) do |name|
  name.split(" ").first
end

puts(newArray)