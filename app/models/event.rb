class Event < ActiveRecord::Base
    attr_accessible :title, :minbits,:status
    has_many :bits
    validates :title, :status, presence: true
    validates :minbits, numericality: {greater_than_or_equal_to: 100}
    validates :title, uniqueness: true
    
  def self.make_status
    Event.all.map! do |event|
      event.status = [:loss, :win].sample
      event.save
    end
  end  

 def self.make_suspense
    Event.all.map! do |event|
      event.status = :suspense
      event.save
    end
  end  

end
