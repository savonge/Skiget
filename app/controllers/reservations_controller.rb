class ResevationController < ApplicationController
  before_action :find_user

  # GET /gears
  # GET /gears.json
  def index
    Reservation.all

  end

  # GET /gears/1
  # GET /gears/1.json
  def show

  end

  # GET /gears/new
  def new
    @reservation = Reservation.new
  end

  # GET /gears/1/edit
  def edit
  end
it
  # POST /gears
  # POST /gears.json
  def create
    @reservation = @user.gears.build(gear_params)
    @reservation.save

    respond_to do |format|
      if @gear.save
        format.html { redirect_to @user, notice: 'Gear was successfully created.' }
        format.json { render :show, status: :created, location: @gear }
      else
        format.html { render :new }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end

   end

  # PATCH/PUT /gears/1
  # PATCH/PUT /gears/1.json


  # DELETE /gears/1
  # DELETE /gears/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_params
      params.require(:gear).permit(:item, :description, :size, :brand, :price)
    end
end
