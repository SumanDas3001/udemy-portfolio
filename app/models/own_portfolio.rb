class OwnPortfolio < ApplicationRecord
	#### Association
	has_many :technologies

	#### Nested Attributes
	accepts_nested_attributes_for :technologies

	# accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['mame'].blank? }

	####  This is a concerns used to generate image
	include Placeholder  

	validates_presence_of :title, :body, :main_image, :thumb_image

	mount_uploader :thumb_image, OwnPortfolioUploader
	mount_uploader :main_image, OwnPortfolioUploader
	
	#### Callbacks
	after_initialize :set_defaults  #### after_initialize only call when we create a new record.

  #### Custom scopes 
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
	scope :angular, -> { where(subtitle: "Angular")}

	def self.by_position
		order("position ASC")
	end

	
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
		self.thumb_image ||= Placeholder.image_generator(height: "350", width: "200")
	end
end
