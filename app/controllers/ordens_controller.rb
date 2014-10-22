class OrdensController < ApplicationController
  before_action :set_orden, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  def index
    @ordens = Orden.all
    respond_with(@ordens)
  end

  def show
    respond_with(@orden)
  end

  def new
    @orden = Orden.new
    respond_with(@orden)
  end

  def edit
  end

  def create
    @orden = Orden.new(orden_params)
    @orden.save
    respond_with(@orden)
  end

  def update
    @orden.update(orden_params)
    respond_with(@orden)
  end

  def destroy
    @orden.destroy
    respond_with(@orden)
  end

  private
    def set_orden
      @orden = Orden.find(params[:id])
    end

    def orden_params
      params.require(:orden).permit(:fecha_uso, :user_id, ordenproductos_attributes: [:id,:producto_id, :orden_id, :cantidad,:done, :_destroy])
    end
end
