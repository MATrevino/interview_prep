# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

 

# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
 

# Constraints:

# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.

#things to consider: 
#input: array of strings
#output: string of the longest common prefix
#edge cases: no common prefix, empty array, empty string
def longest_common_prefix(array_of_strings)
  return "" if array_of_strings.empty?
  return array_of_strings[0] if array_of_strings.length == 1
  prefix = ""
  array_of_strings[0].each_char.with_index do |char, index|
    array_of_strings.each do |string|
      return prefix if string[index] != char
    end
    prefix += char
  end
  prefix
end
