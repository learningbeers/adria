class Members::VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show

  end

  # GET /vehicles/new
  def new
    @member = Member.find(params[:member_id])
    @vehicle = Vehicle.new
  end

  # GET /vehicles/1/edit
  def edit
    @member = Member.find(params[:member_id])

  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @member = Member.find(params[:member_id])
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.member = @member

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @member, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    @member = Member.find(params[:member_id])


    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @member, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:brand, :vehicle_model, :vehicletype, :member_id)
    end
end
