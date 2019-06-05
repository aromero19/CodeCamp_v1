class CheckAnswersController < ApplicationController
  before_action :set_check_answer, only: [:show, :edit, :update, :destroy]

  # GET /check_answers
  # GET /check_answers.json
  def index
    @check_answers = CheckAnswer.all
  end

  # GET /check_answers/1
  # GET /check_answers/1.json
  def show
  end

  # GET /check_answers/new
  def new
    @check_answer = CheckAnswer.new
  end

  # GET /check_answers/1/edit
  def edit
  end

  # POST /check_answers
  # POST /check_answers.json
  def create
    @check_answer = CheckAnswer.new(check_answer_params)

    respond_to do |format|
      if @check_answer.save
        format.html { redirect_to @check_answer, notice: 'Check answer was successfully created.' }
        format.json { render :show, status: :created, location: @check_answer }
      else
        format.html { render :new }
        format.json { render json: @check_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_answers/1
  # PATCH/PUT /check_answers/1.json
  def update
    respond_to do |format|
      if @check_answer.update(check_answer_params)
        format.html { redirect_to @check_answer, notice: 'Check answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_answer }
      else
        format.html { render :edit }
        format.json { render json: @check_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_answers/1
  # DELETE /check_answers/1.json
  def destroy
    @check_answer.destroy
    respond_to do |format|
      format.html { redirect_to check_answers_url, notice: 'Check answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_answer
      @check_answer = CheckAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_answer_params
      params.require(:check_answer).permit(:checks, :description)
    end
end
