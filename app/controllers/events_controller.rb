class EventsController < ApplicationController
  inherit_resources
  
  def index
    @events = Event.order(:title)
  end

  def make_bit
    user = current_user
    event = Event.find(params[:id])
    if event.status == "suspense"
      bit = Bit.create(user_id: user.id, event_id: event.id, sum: event.minbits, payed: false)
      notice = 'Bit was successfully created.'
      redirect_to events_url, notice: notice
    else
      redirect_to events_url, notice: 'Bit is already not use'
    end  
     
  end
  
  def make_status_bits
    begin
      Event.make_status
      User.add_balance
      redirect_to events_url, notice: 'All bits make' 
    rescue
      redirect_to events_url, notice: 'No wallet'
    end
  end
  
  def cancel_status_bits
    Event.make_suspense
    redirect_to events_url, notice: 'All make' 
  end
  private
 
  def find_current_bit
    bit = Bit.find_by_id(session[:bit_id])
    if bit.nil?
      bit = Bit.create(user_id: current_user.id, payed: false)
      session[:bit_id] = bit.id
    end
    bit
  end
end