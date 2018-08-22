class QuizzesController < ApplicationController

  def final_exam

  end

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
    render @quizzes
  end

  def create
    @quiz = Quiz.new()
    @quiz.name = params[:quiz][:name]
    if @quiz.save
      redirect_to quizzes_path
    else
      render "new"
    end
  end

  def add_questions
    puts params[:question]
  
  end

end
