require './lib/lasagna.rb'

RSpec.describe Lasagna do
  let(:lasagna) { Lasagna.new }
  describe '#initialize' do
    it 'exists' do
      expect(lasagna).to be_a(Lasagna)
    end

    it 'returns 40 for expected time in oven' do
      expect(Lasagna::EXPECTED_MINUTES_IN_OVEN).to eq(40)
    end
  end

  describe '#remaining_minutes_in_oven' do
    it 'returns 15 when 25 minutes have passed' do
      expect(lasagna.remaining_minutes_in_oven(25)).to eq(15)
    end
  end

  describe '#preparation_time_in_minutes' do
    it 'returns 2 when given 1 layers' do
      expect(lasagna.preparation_time_in_minutes(1)).to eq(2)
    end

    it 'returns 8 when given 4 layers' do
      expect(lasagna.preparation_time_in_minutes(4)).to eq(8)
    end
  end

  describe '#total_time_in_minutes' do
    it 'it returns 32 when given 1 layer and 30 minutes in oven' do
      expect(Lasagna.new.total_time_in_minutes(number_of_layers: 1, actual_minutes_in_oven: 30)).to eq(32)
    end

    it 'returns 16 when given 4 layers and 4 minutes in oven' do
      expect(Lasagna.new.total_time_in_minutes(number_of_layers: 4, actual_minutes_in_oven: 8)).to eq(16)
    end
  end
end