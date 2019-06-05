class QuizController < ApplicationController
  def index
      @questions = Question.all
      @review = Review.new
      @reviewanswer = Reviewanswer.new
  end
end
