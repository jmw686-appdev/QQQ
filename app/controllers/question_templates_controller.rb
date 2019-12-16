class QuestionTemplatesController < ApplicationController
  before_action :set_question_template, only: [:show, :edit, :update, :destroy]

  # GET /question_templates
  def index
    @question_templates = QuestionTemplate.all
  end

  # GET /question_templates/1
  def show
  end

  # GET /question_templates/new
  def new
    @question_template = QuestionTemplate.new
  end

  # GET /question_templates/1/edit
  def edit
  end

  # POST /question_templates
  def create
    @question_template = QuestionTemplate.new(question_template_params)

    if @question_template.save
      redirect_to @question_template, notice: 'Question template was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /question_templates/1
  def update
    if @question_template.update(question_template_params)
      redirect_to @question_template, notice: 'Question template was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /question_templates/1
  def destroy
    @question_template.destroy
    redirect_to question_templates_url, notice: 'Question template was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_template
      @question_template = QuestionTemplate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_template_params
      params.require(:question_template).permit(:context_id, :name, :points_awarded)
    end
end
