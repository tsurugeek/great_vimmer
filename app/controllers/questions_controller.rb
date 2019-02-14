class QuestionsController < ApplicationController
  before_action :set_grade
  before_action :set_question

  def show
    @answer = session['a'].detect{|answer| answer['qid'] == @question.id}
  end

  def answer
    @answer = session['a'].detect{|answer| answer['qid'] == @question.id}
    @answer['a'] = params['a']
    @answer['ok'] = (params['a'] == @question.answer)
    @next_answer = session['a'].detect{|answer| answer['num'] == @answer['num'] + 1}
  end

  private
    def set_grade
      @grade = Grade.find(params[:grade_id])
    end

    def set_question
      @question = Question.find(params[:id])
    end
end
