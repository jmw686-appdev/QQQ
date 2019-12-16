class ConsumptionsController < ApplicationController
  before_action :set_consumption, only: %i[show edit update destroy]

  # GET /consumptions
  def index
    @consumptions = Consumption.all
  end

  # GET /consumptions/1
  def show; end

  # GET /consumptions/new
  def new
    @consumption = Consumption.new
  end

  # GET /consumptions/1/edit
  def edit; end

  # POST /consumptions
  def create
    @consumption = Consumption.new(Consumption_params)

    if @consumption.save
      redirect_to @consumption, notice: "Consumption was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /consumptions/1
  def update
    if @consumption.update(Consumption_params)
      redirect_to @consumption, notice: "Consumption was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /consumptions/1
  def destroy
    @consumption.destroy
    redirect_to consumptions_url, notice: "Consumption was successfully destroyed."
  end

  
  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consumption
    @consumption = Consumption.find(params[:id])
  end

  

end
