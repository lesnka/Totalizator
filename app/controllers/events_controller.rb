class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    
    @events = Event.order(:title)

  end

  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
  end

  # GET /events/1/edits
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: "new" 
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: "edit" 
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url 
  end
 
  def make_bit
    begin
      user = current_user
      event = Event.find(params[:id])
      bit = user.bits.find_by_event_id(event.id)
      if bit
         notice = 'Bit already exist.'
      else   
        bit = Bit.new(user_id: user.id, event_id: event.id, sum: event.minbits, payed: false)
        if bit.save
          notice = 'Bit was successfully created.'
        else
          notice = 'Bit not created.'
        end
      end
      redirect_to events_url, notice: notice
      rescue
      redirect_to events_url, notice: 'Please login or register' 
    end
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