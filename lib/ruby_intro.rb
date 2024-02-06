# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  arr.each_with_index do |a, i|
    arr.each_with_index do |b, j|
      next if i == j 
      return true if a + b == number
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  !!string.match(/^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(string)
  return true if string.match?(/^[01]+$/) and string.to_i(2) % 4 == 0
  return false
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "Given ISBN is empty" if isbn.empty?
    raise ArgumentError, "Given Price is zero or negative" if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
