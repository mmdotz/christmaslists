class HomesController < ApplicationController
  include BudgetsHelper

  def index
    @unbought_purchases = purchases.where(bought: false)
  end
end
