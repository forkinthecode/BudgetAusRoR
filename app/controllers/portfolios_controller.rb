class PortfoliosController < ApplicationController
  def index
  	@portfolios = Portfolio.all.sort{|x,y| y.total_spend <=> x.total_spend}
  end

  def show
  	@portfolio = Portfolio.find params[:id]
  end
end
