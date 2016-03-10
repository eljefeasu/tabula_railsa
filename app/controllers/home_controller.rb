class HomeController < ApplicationController

  def index
    @questions = Question.all
  end

  def show

  end

  def new
    @question = Question.new
  end

  def edit

  end

  def create
    @question = Question.new(question_params)
    respond_to do |format|
      if @question.save
        redirect_to action: "index", notice: 'Dish was successfully created.'
      else
        render :new
      end
    end
  end

  def update

  end

  def destroy

  end

  def form
    if request.post?
      @question = Question.create!(question_params)
    end
  end

  private def question_params
    params.require(:question).permit(:name, :chocolate, :rainbows, :puppies, :cash)
  end

end
