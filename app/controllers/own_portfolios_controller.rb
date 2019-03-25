class OwnPortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :update, :edit, :destroy]

  def index
    @portfolio_items = OwnPortfolio.all
  end

  def show
  end

  def new
    @portfolio_item = OwnPortfolio.new
  end

  def create
    @portfolio_item = OwnPortfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to own_portfolios_path, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_portfolio
    @portfolio_item = OwnPortfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:own_portfolio).permit(:title, :subtitle, :body)
  end
end
