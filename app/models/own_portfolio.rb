class OwnPortfolio < ApplicationRecord
	#### Association
	has_many :technologies

	#### Nested Attributes
	accepts_nested_attributes_for :technologies, allow_destroy: true


	# accepts_nested_attributes_for :technologies, 
	# 															allow_destroy: true,
	# 															reject_if: lambda { |attrs| attrs['mame'].blank? }

	validates_presence_of :title, :body

	mount_uploader :thumb_image, OwnPortfolioUploader
	mount_uploader :main_image, OwnPortfolioUploader
	
  #### Custom scopes 
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
	scope :angular, -> { where(subtitle: "Angular")}

	def self.by_position
		order("position ASC")
	end
end
