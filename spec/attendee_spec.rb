require './lib/attendee.rb'

RSpec.describe Attendee do
  before(:each) do
    @jack = Attendee.new(100)
  end
  describe '#initialize' do
    it 'exists' do
      expect(@jack).to be_a(Attendee)
    end
    
    it 'returns the height of the attendee' do
      expect(@jack.height).to eq(100)
    end
  end
end