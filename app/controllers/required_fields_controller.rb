class RequiredFieldsController < ApplicationController
  before_action :set_required_field, only: [:show, :edit, :update, :destroy]

  # GET /required_fields
  def index
    @required_fields = RequiredField.all
  end

  # GET /required_fields/1
  def show
  end

  # GET /required_fields/new
  def new
    @required_field = RequiredField.new
  end

  # GET /required_fields/1/edit
  def edit
  end

  # POST /required_fields
  def create
    @required_field = RequiredField.new(required_field_params)

    if @required_field.save
      redirect_to @required_field, notice: 'Required field was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /required_fields/1
  def update
    if @required_field.update(required_field_params)
      redirect_to @required_field, notice: 'Required field was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /required_fields/1
  def destroy
    @required_field.destroy
    redirect_to required_fields_url, notice: 'Required field was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_required_field
      @required_field = RequiredField.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def required_field_params
      params.require(:required_field).permit(:input_type, :instructions, :question_template_id, :options)
    end
end
