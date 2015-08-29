class CarpoolingrequestsController < ApplicationController
  before_action :set_carpoolingrequest, only: [:show, :edit, :update, :destroy]

  # GET /carpoolingrequests
  # GET /carpoolingrequests.json
  def index
    @carpoolingrequests = Carpoolingrequest.all
  end

  # GET /carpoolingrequests/1
  # GET /carpoolingrequests/1.json
  def show
  end

  # GET /carpoolingrequests/new
  def new
    @carpoolingrequest = Carpoolingrequest.new
  end

  # GET /carpoolingrequests/1/edit
  def edit
  end

  # POST /carpoolingrequests
  # POST /carpoolingrequests.json
  def create
    @carpoolingrequest = Carpoolingrequest.new(carpoolingrequest_params)

    respond_to do |format|
      if @carpoolingrequest.save
        format.html { redirect_to @carpoolingrequest, notice: 'Carpoolingrequest was successfully created.' }
        format.json { render :show, status: :created, location: @carpoolingrequest }
      else
        format.html { render :new }
        format.json { render json: @carpoolingrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carpoolingrequests/1
  # PATCH/PUT /carpoolingrequests/1.json
  def update
    respond_to do |format|
      if @carpoolingrequest.update(carpoolingrequest_params)
        format.html { redirect_to @carpoolingrequest, notice: 'Carpoolingrequest was successfully updated.' }
        format.json { render :show, status: :ok, location: @carpoolingrequest }
      else
        format.html { render :edit }
        format.json { render json: @carpoolingrequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carpoolingrequests/1
  # DELETE /carpoolingrequests/1.json
  def destroy
    @carpoolingrequest.destroy
    respond_to do |format|
      format.html { redirect_to carpoolingrequests_url, notice: 'Carpoolingrequest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carpoolingrequest
      @carpoolingrequest = Carpoolingrequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carpoolingrequest_params
      params.require(:carpoolingrequest).permit(:email, :password, :user_id, :travel_id, :prefer_from, :prefer_to)
    end
end
