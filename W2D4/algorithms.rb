require 'byebug'

# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.
# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"


# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to
# all other fish lengths

  def sluggish(array)
    longest = []
    i = 0
    # debugger
    while i < array.length
      j = 0
      while j < array.length
         longest = array[i] if array[i].length > array[j].length
        j += 1
      end
      i += 1
    end
    longest
  end

  sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm
# that runs in O(n log n) in the Sorting Demo. Remember that Big O is classified
# by the dominant term.

def merge_sort(array)
  return array if array.length <= 1
  mid = array.length / 2
  left_split = array[0...mid]
  right_split = array[mid..array.length]

  left_sort = merge_sort(left_split)
  right_sort = merge_sort(left_split)

  merge(left_sort, right_sort, array)
end

def merge(left, right, array)
  result = []
  
  until left.empty? || right.empty?
  if left.first.length <=> right.first.length < 0
    result << righ.shift
  else
    result << left.shift
  end
end
  result + left + right
end

p merge_sort(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest
# fish that you have found so far while stepping through the array only once.

def clever(array)
  result = []
  array.select{|word|result = word if word.length > result.length}
  result

end
p clever(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles
# in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
# "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle.
# We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle
# number (tile index) the octopus must move. This should take O(n) time.

tiles_array = (["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ])

  def slow_dance(string, tiles_array)
    result = 0
    tiles_array.each_with_index{|word, idx| result = idx if word == string}
    result
  end

p slow_dance("up", tiles_array) == 0
p slow_dance("right-down", tiles_array) == 3



# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different
# data structure and write a new function so that you can access the tentacle
# number in O(1) time.

  def fast_dance(string, hash)
    return hash[string]
  end

  new_tiles_data_structure = {"up" => 0 , "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}
p fast_dance("up", new_tiles_data_structure)  == 0
p fast_dance("right-down", new_tiles_data_structure)  == 3
