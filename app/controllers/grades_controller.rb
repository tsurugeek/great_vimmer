class GradesController < ApplicationController
  before_action :set_grade

  def show
  end

  def start
    session['a'] = @grade.question_ids.map.with_index(1) do |id, i|
      {'num' => i, 'qid' => id, 'ok' => nil, 'a' => nil}
    end
    redirect_to grade_question_path(@grade, session['a'].first['qid'])
  end

  def summary
    @answers = session['a']
    @result = @answers.select{|a| a['ok'] == true}.size.to_f / @answers.size
  end

  private
    def set_grade
      @grade = Grade.find(params[:id])
    end
end
