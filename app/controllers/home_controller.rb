class HomeController < ApplicationController

  def form
    @question = Question.new
    if request.post?
      @question = Question.create(question_params)
    end
  end

  private def question_params
    params.require(:question).permit(:name, :chocolate, :rainbows, :puppies, :cash)
  end

end
