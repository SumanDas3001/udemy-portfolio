class AddPositionToOwnPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :own_portfolios, :position, :integer
  end
end
