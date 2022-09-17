class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  def index
    @testimonials = Testimonial.all
    @user = current_user
  end

  def show
    @testimonial = Testimonial.find(params[:id])
    @user = current_user
  end

  def new
    @testimonial = Testimonial.new
    @user = current_user
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.save
      redirect_to testimonials_path
    else
      render :new
    end
  end


  def edit
    @testimonial = Testimonial.find(params[:id])
    @user = current_user
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    @testimonial.update(testimonial_params)
    redirect_to testimonials_path
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    redirect_to testimonials_path
  end

  private
    def testimonial_params
      params.require(:testimonial).permit(:name, :profession, :content, :date, :photo)
    end

    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end
end
