class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :activate]

  def index
    @schools = current_user.schools.all
  end

  def show
  end

  def new
    # @school = current_user.schools.new
    @school = School.new
  end

  def create
    @school = current_user.schools.new(school_params)
    if @school.save
      redirect_to school_path(@school)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @school.update(school_params)
      redirect_to school_path(@school)
    else
      render :edit
    end
  end

  def activate
    @school.activate
    if @school.valid?
      @school.is_active = true
      @school.save
      redirect_to school_path(@school)
    else
      render :edit
    end
  end

  private

  def set_school
    @school = School.find(params[:id])
  end

  def school_params
    params.require(:school).permit(:name, :about, :address, :postal_code, :city, :country, :email, :phone, photos: [])
  end
end
