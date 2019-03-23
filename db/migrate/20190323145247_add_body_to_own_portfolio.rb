class AddBodyToOwnPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :own_portfolios, :body, :text
  end
end
