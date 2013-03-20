class Bit < ActiveRecord::Base
 attr_accessible :user_id, :sum, :event_id, :payed
  #has_many :lines_items, dependent: :destroy
  belongs_to :user
  belongs_to :event
  validates :sum, numericality: {greater_than_or_equal_to: 99}  
   
  
      
end
