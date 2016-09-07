# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0) {|sum, i| sum+i}
end

def max_2_sum arr
  # YOUR CODE HERE
  sum arr.sort.last(2)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.combination(2).detect {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  my_regex =/\A[b-d,f-h,j-n,p-t,v-z]/i
  my_regex =~ s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  my_regex_2 =/\A([1,0]*00|0)\z/
  my_regex_2 =~ s
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_in, price_in)
    isbn_regex = /^\w{2,}$/
    raise ArgumentError.new("invalid isbn") if !isbn_regex =~ isbn_in
    @isbn = isbn_in
    raise ArgumentError.new("invalid price") if price_in<=0
    @price = price_in
  end
  
  def isbn #getter function
    @isbn
  end
  
  def isbn=(x) #setter function
    @isbn = x
  end
  
  def price #getter function
    @price
  end
  
  def price=(x) #setter function
    @price = x
  end
  
  def price_as_string
    return '$%.2f' % price.to_f.round(2)
  end
end
