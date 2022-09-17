class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action

  def home
    @user = current_user
    @testimonials = Testimonial.all
  end

  def recommendations
    @user = current_user
  end

  def blogs
    @user = current_user
  end

  def news
    @user = current_user
  end

  def about
    @user = current_user
  end

end
