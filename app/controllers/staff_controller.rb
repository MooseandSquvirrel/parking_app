class StaffController < ApplicationController
  before_action :authenticate_user!, only: :search
  before_action :authorize_staff!, only: :search

  def search
    @cars = Car.search(params[:search])
  end

  def marvin_search
    render json: search
  end
end
