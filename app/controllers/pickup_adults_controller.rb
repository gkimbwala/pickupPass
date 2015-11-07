class PickupAdultsController < ApplicationController
  before_action :set_pickup_adult, only: [:show, :edit, :update, :destroy]

  # GET /pickup_adults
  # GET /pickup_adults.json
  def index
    @pickup_adults = PickupAdult.all
  end

  # GET /pickup_adults/1
  # GET /pickup_adults/1.json
  def show
    @pickup_adult = PickupAdult.find_by(id: params[:id])
    @comments = @pickup_adult.comments.all
    #@comments = @pickup_adult.comments.build
    p @comments
    p "*" * 100
    p @pickup_adult
    p "*" * 100
    p params
    p "*" * 100
  end

  # GET /pickup_adults/new
  def new
    @pickup_adult = PickupAdult.new
  end

  # GET /pickup_adults/1/edit
  def edit
  end

  # POST /pickup_adults
  # POST /pickup_adults.json
  def create
    @pickup_adult = PickupAdult.new(pickup_adult_params)

    respond_to do |format|
      if @pickup_adult.save
        format.html { redirect_to @pickup_adult, notice: 'Pickup adult was successfully created.' }
        format.json { render :show, status: :created, location: @pickup_adult }
      else
        format.html { render :new }
        format.json { render json: @pickup_adult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickup_adults/1
  # PATCH/PUT /pickup_adults/1.json
  def update
    respond_to do |format|
      if @pickup_adult.update(pickup_adult_params)
        format.html { redirect_to @pickup_adult, notice: 'Pickup adult was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup_adult }
      else
        format.html { render :edit }
        format.json { render json: @pickup_adult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickup_adults/1
  # DELETE /pickup_adults/1.json
  def destroy
    @pickup_adult.destroy
    respond_to do |format|
      format.html { redirect_to pickup_adults_url, notice: 'Pickup adult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup_adult
      @pickup_adult = PickupAdult.find(params[:id])
      @comments = @pickup_adult.comments.all
      @comments = @pickup_adult.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_adult_params
      params.require(:pickup_adult).permit(:name, :description, :picture)
    end
end
