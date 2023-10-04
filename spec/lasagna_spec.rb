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
end