class ReviewanswersController < ApplicationController
  before_action :set_reviewanswer, only: [:show, :edit, :update, :destroy]

  # GET /reviewanswers
  # GET /reviewanswers.json
  def index
    @reviewanswers = Reviewanswer.all
  end

  # GET /reviewanswers/1
  # GET /reviewanswers/1.json
  def show
  end

  # GET /reviewanswers/new
  def new
    @reviewanswer = Reviewanswer.new
  end

  # GET /reviewanswers/1/edit
  def edit
  end

  # POST /reviewanswers
  # POST /reviewanswers.json
  def create
    @reviewanswer = Reviewanswer.new(reviewanswer_params)

    respond_to do |format|
      if @reviewanswer.save
        format.html { redirect_to @reviewanswer, notice: 'Reviewanswer was successfully created.' }
        format.json { render :show, status: :created, location: @reviewanswer }
      else
        format.html { render :new }
        format.json { render json: @reviewanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviewanswers/1
  # PATCH/PUT /reviewanswers/1.json
  def update
    respond_to do |format|
      if @reviewanswer.update(reviewanswer_params)
        format.html { redirect_to @reviewanswer, notice: 'Reviewanswer was successfully updated.' }
        format.json { render :show, status: :ok, location: @reviewanswer }
      else
        format.html { render :edit }
        format.json { render json: @reviewanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviewanswers/1
  # DELETE /reviewanswers/1.json
  def destroy
    @reviewanswer.destroy
    respond_to do |format|
      format.html { redirect_to reviewanswers_url, notice: 'Reviewanswer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviewanswer
      @reviewanswer = Reviewanswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reviewanswer_params
      params.require(:reviewanswer).permit(:review_id, :question_id, :answer_id)
    end
end
