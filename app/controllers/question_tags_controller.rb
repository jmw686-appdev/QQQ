class QuestionTagsController < ApplicationController
  before_action :set_question_tag, only: [:show, :edit, :update, :destroy]

  # GET /question_tags
  def index
    @question_tags = QuestionTag.all
  end

  # GET /question_tags/1
  def show
  end

  # GET /question_tags/new
  def new
    @question_tag = QuestionTag.new
  end

  # GET /question_tags/1/edit
  def edit
  end

  # POST /question_tags
  def create
    @question_tag = QuestionTag.new(question_tag_params)

    if @question_tag.save
      redirect_to @question_tag, notice: 'Question tag was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /question_tags/1
  def update
    if @question_tag.update(question_tag_params)
      redirect_to @question_tag, notice: 'Question tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /question_tags/1
  def destroy
    @question_tag.destroy
    redirect_to question_tags_url, notice: 'Question tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_tag
      @question_tag = QuestionTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_tag_params
      params.require(:question_tag).permit(:tag_id, :question_id)
    end
end
