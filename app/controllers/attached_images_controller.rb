class AttachedImagesController < ApplicationController
  before_action :set_attached_image, only: [:show, :edit, :update, :destroy]

  # GET /attached_images
  def index
    @attached_images = AttachedImage.all
  end

  # GET /attached_images/1
  def show
  end

  # GET /attached_images/new
  def new
    @attached_image = AttachedImage.new
  end

  # GET /attached_images/1/edit
  def edit
  end

  # POST /attached_images
  def create
    @attached_image = AttachedImage.new(attached_image_params)

    if @attached_image.save
      redirect_to @attached_image, notice: 'Attached image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /attached_images/1
  def update
    if @attached_image.update(attached_image_params)
      redirect_to @attached_image, notice: 'Attached image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /attached_images/1
  def destroy
    @attached_image.destroy
    redirect_to attached_images_url, notice: 'Attached image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attached_image
      @attached_image = AttachedImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attached_image_params
      params.require(:attached_image).permit(:image_id, :response_id, :question_id)
    end
end
