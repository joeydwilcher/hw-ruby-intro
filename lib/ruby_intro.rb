# When done, submit this entire file to the autograder.
VOWELS = ["A","E","I","O","U"]

# Part 1

def sum arr
  return 0 unless arr
  arrSum = 0
  arr.each { |a| arrSum += a }
  return arrSum
end

def max_2_sum arr
  return 0 unless arr and !arr.empty?
  return arr.first unless arr.count > 1
  sorted = arr.sort
  return sorted[sorted.length - 1] + sorted[sorted.length - 2]
end

def sum_to_n? arr, n
  return false unless arr and arr.length > 1
  return arr.any? { |a| (arr - [a]).any? { |b| a + b == n } }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return false unless s and !s.empty?
  return !VOWELS.include?(s.chr.capitalize)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
