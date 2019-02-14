class HomeController < ApplicationController
  def show
    @grades = Grade.published
  end
end
