class LineItem < ActiveRecord::Base
  attr_accessible :bits_id, :event_id, :price
  belongs_to :event
  belongs_to :bit
  validates :price, numericality: {greater_than_or_equal_to: 99}  
  #validates :price, numericality: {greater_than_or_equal_to: @minbis}
end
