class Event < ActiveRecord::Base
    attr_accessible :title, :minbits,:status
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
    before_destroy :ensure_not_referenced_by_any_line_item
    validates :title, :status, presence: true
    validates :minbits, numericality: {greater_than_or_equal_to: 100}
    validates :title, uniqueness: true
    
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
          return true
      else
          return false
      end
    end



end
