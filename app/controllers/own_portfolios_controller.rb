class OwnPortfoliosController < ApplicationController
  def index
    @portfolio_items = OwnPortfolio.all
  end
end
