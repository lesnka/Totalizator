require 'spec_helper'

describe Event do
  before(:each) do
    Event.delete_all
    @event = create :event
    #@event3 = Event.create(title: "bits90", minbits: 200, status: "suspense")
    #@event1 = FactoryGirl.create :suspense_event
    # @event2 = FactoryGirl.create :status_loss
  end

  it 'save with correct values' do
    @event.save
    @event.should be_valid
  end

  it 'Presense title' do
    @event.title = nil
    @event.save
    @event.should_not be_valid
  end
  
  it 'method make status test' do
   Event.make_status  
   @event.reload.status.should_not == 'suspense'
  end

it 'method make suspense test' do
   @event.status = 'win'
   Event.make_suspense
   @event.reload.status.should == 'suspense'
end



end
