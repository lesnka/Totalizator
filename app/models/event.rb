class Event < ActiveRecord::Base
    attr_accessible :title, :minbits,:status
    has_many :bits
    validates :title, :status, presence: true
    validates :minbits, numericality: {greater_than_or_equal_to: 100}
    validates :title, uniqueness: true
    
    



end
