class OwnPortfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image
	#### Callbacks
	after_initialize :set_defaults  #### after_initialize only call when we create a new record.


  #### Custom scopes 
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
	scope :angular, -> { where(subtitle: "Angular")}

	
	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200"
	end
end
