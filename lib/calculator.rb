class Calculator
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
    def self.calculate(first_operand, second_operand, operation)
  
      if first_operand.is_a?(String) || second_operand.is_a?(String)
        raise ArgumentError
      end
    
      string_answer = []
      string_answer << [first_operand, operation, second_operand]
      
      if operation == '+'
        answer = first_operand + second_operand
        string_answer << ['=', answer]
        string_answer.flatten.join(' ')
      elsif operation == '/'
        return 'Division by zero is not allowed.' if second_operand == 0
        answer = first_operand/second_operand
        string_answer << ['=', answer]
        string_answer.flatten.join(' ')
      elsif operation == '*'
        answer = first_operand * second_operand
        string_answer << ['=', answer]
        string_answer.flatten.join(' ')
      else operation == nil || operation == ' ' || operation == '**'
        raise UnsupportedOperation
      end
    end  
end