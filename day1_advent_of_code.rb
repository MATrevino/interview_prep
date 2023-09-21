# --- Day 1: Report Repair ---
# After saving Christmas five years in a row, you've decided to take a vacation at a nice resort on a tropical island. Surely, Christmas will go on without you.

# The tropical island has its own currency and is entirely cash-only. The gold coins used there have a little picture of a starfish; the locals just call them stars. None of the currency exchanges seem to have heard of them, but somehow, you'll need to find fifty of these coins by the time you arrive so you can pay the deposit on your room.

# To save your vacation, you need to get all fifty stars by December 25th.

# Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

# Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

# Specifically, they need you to find the two entries that sum to 2020 and then multiply those 
# two numbers together.

# For example, suppose your expense report contained the following:

# 1721
# 979
# 366
# 299
# 675
# 1456
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

# Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

# Find two numbers from a list that sum to 2020, then multiply them together
# Input: array of integers
# Output: integer (multiplied two together)
# Things to consider: nil return if no two numbers add to 2020
#ideas: 1. iterate through the array to find two numbers that add to 2020 2. take one number and substract from 2020 and iterate through to find the other number

def two_sum(num_array)
  num_array.each do |num|
    num2 = 2020 - num
    if num_array.include?(num2)
      p num * num2 
      return
    end
  end
end

array = [1721, 979, 366, 299, 675, 1456]

two_sum(array)

# def two_sum(num_array)
#   num_hash = {} # Create a hash to store each number and its index

#   num_array.each_with_index do |num, index|
#     num2 = 2020 - num

#     # Check if num2 exists in the hash, indicating a pair that sums to 2020
#     if num_hash.key?(num2)
#       return [num_hash[num2], index] # Return the indices of the pair
#     end

#     # Store the current number and its index in the hash
#     num_hash[num] = index
#   end

#   return nil # Return nil if no such pair is found
# end

# num_array = [1721, 979, 366, 299, 675, 1456]

# result = two_sum(num_array)

# if result
#   puts "Indices of the two numbers that sum to 2020: #{result}"
# else
#   puts "No pair of numbers found that sum to 2020."
# end