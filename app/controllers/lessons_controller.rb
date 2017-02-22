class LessonsController < ApplicationController
  before_action :set_school
  before_action :set_lesson, only: [:show, :edit, :update, :activate]

  def index
    @lessons = @school.lessons.all
  end

  def show
  end

  def new
    @lesson = @school.lessons.new
  end

  def create
    @lesson = @school.lessons.new(lesson_params)
    if @lesson.save
      redirect_to school_lesson_path(@school, @lesson)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to school_lesson_path(@school, @lesson)
    else
      render :edit
    end
  end

  def activate
    @lesson.activate
    if @lesson.valid?
      @lesson.is_active = true
      @lesson.save!
      redirect_to school_lesson_path(@school, @lesson)
    else
      render :edit
    end
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :description, :equipment_provided, :equipment_required, :difficulty, :cancellation_policy, :sport_id, :address, :city, :country, photos: [])
  end
end
