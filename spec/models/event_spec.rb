require 'spec_helper'
require 'factory_girl'
describe Event do
  before(:each) do
    @event1 = Factory(:event1)
    @event2 = Factory(:event2)
    @event3 = Factory(:event3)
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
