class PortifoliosController < ApplicationController

  before_action :set_find, only: [:show, :edit, :update]

  def index
    @portifolio_items = Portifolio.all
  end

  def show
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

  def edit
  end

  def update
    if @portifolio_item.update(portifolio_params)
      redirect_to @portifolio_item, notice: 'Updated with success!'
    else
      render 'edit'
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
