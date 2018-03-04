class Product < ApplicationRecord
	has_many :line_items
	has_many :orders, through: :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_tem
	
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
	 with: %r{\.(gif|jpg|png)\Z}i,
	 message: 'must be URL of GIF, JPG or PNG image.'
	}
	validates :title, length: { minimum: 10 }
	
	private
	
	  def ensure_not_referenced_by_any_line_tem
	  	  unless line_items.empty?
	  	  	  errors.add(:base, 'Line items Present')
	  	  	  throw :abort
	  	  end
	  end
end
