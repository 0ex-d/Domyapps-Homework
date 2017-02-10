class MenuController < ApplicationController
  def index
    @menus = Menu.all
  end


  def new
    @menu = Menu.new
  end


  def create
    @menu = Menu.new(params.require(:menu).permit(:item, :price))
    if @menu.save
      redirect_to :index
    end
  end

end
