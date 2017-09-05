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
  return false unless ("A".."Z").include?(s.chr.capitalize)
  return !VOWELS.include?(s.chr.capitalize)
end

def binary_multiple_of_4? s
  return false unless /^[10]*$/.match(s)
  if (s.length < 2)
    return s[-1] == "0"
  else
    return s[-2,2] == "00"
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'isbn cannot be empty string' unless isbn.length > 1
    raise ArgumentError, 'Price must be a positive number (not including 0)' unless price > 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    return @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
  
  
end
