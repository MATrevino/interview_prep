require './lib/calculator.rb'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }
  describe '#initialize' do
    it 'exists' do
      expect(calculator).to be_a(Calculator)
    end
  end
end