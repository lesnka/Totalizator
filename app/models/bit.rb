class Bit < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent: :destroy
  def 

    add_event(event_id)
    current_item = line_items.find_by_event_id(event_id)
    if current_item 
      current_item.price += 100
    else 
      event = Event.find(params[:event_id])
      current_item = line_items.build(event_id: event_id, price: :event.minbits)
    end  
     current_item
  end
end
