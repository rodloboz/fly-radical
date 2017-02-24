class BookingsController < ApplicationController

  def index
    @rent_bookings = Booking.where(lesson_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @lesson_slot = LessonSlot.find(params[:lesson_slot_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @lesson_slot = LessonSlot.find(params[:lesson_slot_id])
    @booking.user = current_user
    @booking.lesson_slot = @lesson_slot
    if @booking.save
      redirect_to school_lesson_lesson_slot_booking_path(@school, @lesson, @lesson_slot, @booking)
    else
      render :new
    end
  end

  def edit
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.find(params[:id])
  end

  def update
    # raise params.inspect
    @school = School.find(params[:school_id])
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.find(params[:id])
    # raise @booking.inspect
    @booking.update(booking_params)
    # byebug
    if @booking.update(booking_params)
      redirect_to school_lesson_booking_path(@school, @lesson, @booking)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:quantity, :lesson_slot, :id, :lesson_id, :school_id, :booking_date, :payment_date)
  end

end
