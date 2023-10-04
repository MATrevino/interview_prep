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

    it 'returns 01:01 when given 101' do
      expect(Microwave.new(101).timer).to eq('01:01')
    end

    it 'returns 01:01 when given 61' do
      expect(Microwave.new(61).timer).to eq('01:01')
    end

    it 'returns 01:59 when given 159' do
      expect(Microwave.new(159).timer).to eq('01:59')
    end

    it 'returns 02:00 when given 200' do
      expect(Microwave.new(200).timer).to eq('02:00')
    end

    it 'returns 10:01 when given 1001' do
      expect(Microwave.new(1001).timer).to eq('10:01')
    end

    it 'returns 03:12 when given 272' do
      expect(Microwave.new(272).timer).to eq('03:12')
    end
end


#   def test_minute_overflow_adds_to_input_minutes
#     assert_equal '03:12', Microwave.new(272).timer
#   end
# end
