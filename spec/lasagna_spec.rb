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
end