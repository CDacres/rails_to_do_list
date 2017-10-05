class ListsController < ApplicationController
  before_action :authenticate_user!
  def index
    @lists = current_user.lists
  end

  def show
    @lists = current_user.lists.find(params[:id])
  end

  def new
    @list = current_user.lists.new
  end

  def create
    new_list = current_user.lists.create(book_params)
    new_list.save
    redirect_to new_list
  end

  def edit
    @list = current_user.lists.find(params[:id])
  end

  def update
    list = current_user.lists.find(params[:id])
    list.update(list_params)
    redirect_to list
  end

  def destroy
    current_user.lists.destroy(params[:id])
    redirect_to list_url
  end

  protected
  def list_params
    params.require(:list).permit(:item)
  end
end
