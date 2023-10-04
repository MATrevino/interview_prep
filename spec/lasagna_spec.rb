require './lib/lasagna.rb'

RSpec.describe Lasagna do
  let(:lasagna) { Lasagna.new }
  describe '#initialize' do
    it 'exists' do
      expect(lasagna).to be_a(Lasagna)
    end
  end
end