class GiftsController < ApplicationController
  def index
    @gifts = current_user.gifts
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
