class ResevationController < ApplicationController
  before_action :find_gear

  # GET /gears
  # GET /gears.json
  def index
  end

def create
    @gear = Gear.find(params)
    @reservation = Reservation.new(reservation_params)
    @reservation.gear = @gear
    @reservation.save

respond_to do |format|
      if @reservation.save
        format.html { redirect_to @user, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end

  end

  def show
    @gear = Gear.find(params)
     @reservation = @gear.reservation

  end

  # GET /gears/new
  def new
    @reservation = Reservation.new
  end

  # GET /gears/1/edit
  def edit
     @reservation = Reservation.find(set_reservation)
  end



  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:gear_id, :start, :end)
    end


end
