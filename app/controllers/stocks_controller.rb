class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    respond_with(@stocks = Stock.group(:producto_id))
  end

  def show
    respond_with(@stock)
  end

  def movimientos
    @stocks = Stock.all
    respond_with(@stock)
  end

  def new
    @stock = Stock.new
    respond_with(@stock)
  end

  def edit
  end

  def create
    @stock = Stock.new(stock_params)
    @stock.save
    respond_with(@stock)
  end

  def update
    @stock.update(stock_params)
    respond_with(@stock)
  end

  def destroy
    @stock.destroy
    respond_with(@stock)
  end

  private
    def set_stock
      @stock = Stock.find(params[:id])
    end

    def stock_params
      params.require(:stock).permit(:cantidad, :producto_id)
    end
end
