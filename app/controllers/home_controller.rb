class HomeController < ApplicationController
  def index
    redirect_to new_user_registration_path unless current_user
  end

  def issue
  end

  def report
  end
end
