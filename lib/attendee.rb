class Attendee
  attr_reader :height, :pass_id
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def height
    @height
  end

  def pass_id
    raise 'Implement the Attendee#pass_id method'
  end

  def issue_pass!(pass_id)
    raise 'Implement the Attendee#issue_pass! method'
  end

  def revoke_pass!
    raise 'Implement the Attendee#revoke_pass! method'
  end
end