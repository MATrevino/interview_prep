# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false
 

# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

def valid_parentheses(string)
  return false if string.length % 2 != 0
  return true if string == ""
  hash = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }
  stack = []
  string.each_char do |char|
    if hash[char]
      stack << char
    else
      return false if hash[stack.pop] != char
    end
  end
  stack.empty?
end
