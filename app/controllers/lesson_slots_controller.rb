class LessonSlotsController < ApplicationController

  def index
    @booked_slots = LessonSlot.all
  end

  def show
    @lesson_slot = LessonSlot.find(params[:id])
  end

  def new
    @lesson_slot = LessonSlot.new
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
  end

  def create
    @lesson_slot = LessonSlot.new(lesson_slot_params)
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    if @lesson_slot.save
      redirect_to school_lesson_lesson_slot_path(@school, @lesson, @bookings, @lesson_slot)
    else
      render :new
    end
  end

  def edit
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @lesson_slot = LessonSlot.find(params[:id])
  end

  def update
    # raise params.inspect
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @lesson_slot = LessonSlot.find(params[:id])
    # raise @lesson_slot.inspect
    @lesson_slot.update(lesson_slot_params)
    # byebug
    if @lesson_slot.update(lesson_slot_params)
      redirect_to school_lesson_lesson_slot_path(@school, @lesson, @bookings, @lesson_slot)
    else
      render :edit
    end
  end

  def destroy
    @lesson_slot = LessonSlot.find(params[:id])
    @lesson_slot.destroy
    redirect_to lesson_slots_path
  end

  def lesson_slot_params
    params.require(:lesson_slot).permit(:quantity, :id, :lesson_id, :school_id, :lesson_slot_date, :payment_date)
  end

end
