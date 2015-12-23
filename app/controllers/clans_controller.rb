class ClansController < ApplicationController
  before_action :set_clan, only: [:show, :edit, :update, :destroy]

  # GET /clans
  # GET /clans.json
  def index
    @clans = Clan.all
    @relations = Relation.all

    ##trying to getall relations under each clan name, in console this works: how to iterate?
    clan = Clan.last
    c = clan.relations
    c.first.user_id
  end


  # GET /clans/1
  # GET /clans/1.json
  def show
  end

  # GET /clans/new
  def new
    @clan = Clan.new
  end

  # GET /clans/1/edit
  def edit
  end

  # POST /clans
  # POST /clans.json
  def create
    @clan = Clan.new(clan_params)

    respond_to do |format|
      if @clan.save
        format.html { redirect_to @clan, notice: 'Clan was successfully created.' }
        format.json { render :show, status: :created, location: @clan }
      else
        format.html { render :new }
        format.json { render json: @clan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clans/1
  # PATCH/PUT /clans/1.json
  def update
    respond_to do |format|
      if @clan.update(clan_params)
        format.html { redirect_to @clan, notice: 'Clan was successfully updated.' }
        format.json { render :show, status: :ok, location: @clan }
      else
        format.html { render :edit }
        format.json { render json: @clan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clans/1
  # DELETE /clans/1.json
  def destroy
    @clan.destroy
    respond_to do |format|
      format.html { redirect_to clans_url, notice: 'Clan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clan
      @clan = Clan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clan_params
      params.require(:clan).permit(:name)
    end
end
