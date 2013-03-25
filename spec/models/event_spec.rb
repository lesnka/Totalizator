require 'spec_helper'

describe Event do
  before(:each) do
    @event1=Event.new(name: 'Bits#50', minbits: 120, status: 'suspense')
    @event2=Event.new(name: 'Bits#51', minbits: 120, status: 'loss')
    @event3=Event.new(name: 'Bits#52', minbits: 120, status: 'win')
  end


it 'method make status test' do
  Event.make_status
  event1.status.should_not == 'suspense'
end

it 'method make suspense test' do
  Event.make_suspense
  event2.status.should_not == 'loss'
  event3.status.should_not == 'win'
end



end
