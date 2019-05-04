class OwnPortfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  #### Custom scopes 
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}
end
