require './lib/microwave.rb'

RSpec.describe Microwave do
  let(:microwave) { Microwave.new(1) }
  describe '#ititialize' do
    it 'exists' do
      expect(Microwave.new(1)).to be_a(Microwave)
    end
  end

    it 'has a number' do
      expect(microwave.number).to eq(1)
    end

    it 'returns 00:01 when given 1' do
      expect(Microwave.new(1).timer).to eq('00:01')
    end

    it 'returns 00:59 when given 59' do
      expect(Microwave.new(59).timer).to eq('00:59')  
    end

    it 'returns 01:00 when given 60' do
      expect(Microwave.new(60).timer).to eq('01:00')
    end

    it 'return 01:00 when given 100' do 
      expect(Microwave.new(100).timer).to eq('01:00')
    end

    it 'return 01:30 when given 90' do
      expect(Microwave.new(90).timer).to eq('01:30')
    end

end


#   def test_one_minute
#     assert_equal '01:00', Microwave.new(100).timer
#   end
#   def test_ninety_seconds
#     assert_equal '01:30', Microwave.new(90).timer
#   end
#   def test_one_minute_and_one_second
#     assert_equal '01:01', Microwave.new(101).timer
#   end
#   def test_sixty_one_seconds
#     assert_equal '01:01', Microwave.new(61).timer
#   end
#   def test_one_minute_and_fifty_nine_seconds
#     assert_equal '01:59', Microwave.new(159).timer
#   end
#   def test_two_minutes
#     assert_equal '02:00', Microwave.new(200).timer
#   end
#   def test_over_ten_minutes
#     assert_equal '10:01', Microwave.new(1001).timer
#   end
#   def test_minute_overflow_adds_to_input_minutes
#     assert_equal '03:12', Microwave.new(272).timer
#   end
# end
