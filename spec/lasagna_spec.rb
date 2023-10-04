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
end