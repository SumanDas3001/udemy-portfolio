class OwnPortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :update, :edit, :destroy]
  layout "portfolio"
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :edit, :update]}, site_admin: :all

  def index
    @portfolio_items = OwnPortfolio.all
  end

  def angular
    @angular_portfolio_items = OwnPortfolio.angular
  end


  def new
    @portfolio_item = OwnPortfolio.new
    3.times { @portfolio_item.technologies.build }
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

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html {redirect_to own_portfolios_path, notice: "Blog successfully updated."}
      else
        format.html {render :edit}
      end
    end
  end

  def show
  end

  def destroy
    if @portfolio_item.destroy
      respond_to do |format|
        format.html { redirect_to own_portfolios_path, notice: "Post was deleted."}
      end
    end
  end

  private

  def set_portfolio
    @portfolio_item = OwnPortfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:own_portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
end
