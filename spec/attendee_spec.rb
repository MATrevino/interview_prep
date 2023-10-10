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

    it 'returns nil for the pass_id' do
      expect(@jack.pass_id).to eq(nil)
    end

    it 'returns the pass_id when issued' do
      pass_id = 1
      expect(@jack.issue_pass!(pass_id)).to eq(1)
    end

    it 'returns nil for the pass_id when revoked' do
      expect(@jack.revoke_pass!).to eq(nil)
    end
  end
end