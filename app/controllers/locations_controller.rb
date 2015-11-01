class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  # GET /groups
  # GET /groups.json
  def index
    @locations = Location.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @location = Location.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @location = Location.new(location_params)
    
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(pramas[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
      def location_params
        params.require(:location).permit(:city, :state, :postal_code)
      end
end