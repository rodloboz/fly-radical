class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  layout "home_layout"
  def home
    @lessons = Lesson.all
  end

  def search
      @lessons = Lesson.all
      @lessons = Lesson.near(params[:location]).joins(:sport).where(sports: {name: "#{params[:activity]}"}) if params[:location] && params[:activity]
      @lessons = Lesson.near(params[:location], 50) if params[:location]
      @lessons = Lesson.joins(:sport).where(sports: {name: "#{params[:activity]}"}) if params[:activity]
  end
end
