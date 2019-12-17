class UpvotesController < ApplicationController
  before_action :set_upvote, only: [:show, :edit, :update, :destroy]

  # GET /upvotes
  def index
    @upvotes = Upvote.all
  end

  # GET /upvotes/1
  def show
  end

  # GET /upvotes/new
  def new
    @upvote = Upvote.new
  end

  # GET /upvotes/1/edit
  def edit
  end

  # POST /upvotes
  def create
    @upvote = Upvote.new(upvote_params)

    if @upvote.save
      redirect_to @upvote.post, notice: 'Upvote was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /upvotes/1
  def update
    if @upvote.update(upvote_params)
      redirect_to @upvote, notice: 'Upvote was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /upvotes/1
  def destroy
    @upvote.destroy
    redirect_to @upvote.post, notice: 'Upvote was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upvote
      @upvote = Upvote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def upvote_params
      params.require(:upvote).permit(:post_id, :post_type, :enrollment_id)
    end
end
