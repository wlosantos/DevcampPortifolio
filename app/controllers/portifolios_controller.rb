class PortifoliosController < ApplicationController

  # before_action :set_find, only: [:show, :edit, :update, :destroy]

  def index
    @portifolio_items = Portifolio.all
  end

  def new
    @portifolio_item = Portifolio.new
  end

  def create
    @portifolio_item = Portifolio.new(portifolio_params)
    if @portifolio_item.save
      redirect_to @portifolio_item, notice: 'Created with success'
    else
      render 'new'
    end
  end

  private
    def portifolio_params
      params.require(:portifolio).permit(:title, :subtitle, :body)
    end

    def set_find
      @portifolio_item = Portifolio.find(params[:id])
    end

end
