class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]

  def index
    # filter purchases through current_year_purchases - not working
    @purchases = current_user.purchases.order(params[:sort])

    respond_to do |format|
      format.html
      format.csv {send_data @purchases.to_csv}
    end

  end

  def show
  end

  def new
    @purchase = Purchase.new
    @recipients = current_user.recipients
  end

  def edit
    @recipients = current_user.recipients
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @recipients = current_user.recipients

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Purchase was successfully created.' }
        format.json { render :show, status: :created, location: @purchase }
      else
        format.html { render :new }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to purchases_url, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit }
        format.json { render json: @purchases.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
    params.require(:purchase).permit(:item, :url, :vendor, :cost, :tracking_num, :bought, :user_id, :purchase_date, :recipient_id)
  end
end
