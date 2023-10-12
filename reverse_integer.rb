# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

# Example 1:

# Input: x = 123
# Output: 321
# Example 2:

# Input: x = -123
# Output: -321
# Example 3:

# Input: x = 120
# Output: 21

def reverse_integer(num)
  if num > 2147483647 || num < -2147483648
    0
  elsif num.to_s.reverse.to_i > 2147483647 || num.to_s.reverse.to_i < -2147483648
    0
  elsif num.to_s[0] == "-"
    num.to_s.split("").drop(1).reverse.unshift('-').join.to_i
  elsif num.to_s[-1] == 0
    num.to_s.pop.reverse.to_i 
  else 
    num.to_s.reverse.to_i
  end
end

puts reverse_integer(123)
puts reverse_integer(-123)
puts reverse_integer(120)
puts reverse_integer(1534236469)