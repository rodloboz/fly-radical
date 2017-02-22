class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  layout "home_layout"
  def home
  end

  def search
    @lessons = []
    if params[:location].present? && params[:activity]
      @lessons << Lesson.joins(:schools).where('schools.city = ?', params[:location])
    end
    byebug
  end
end
