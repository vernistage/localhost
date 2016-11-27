class BookingsController < ApplicationController

  def request_booking

  end

  def post_booking
    binding.pry

    Booking.create(guest_id: User.find_by(email: params[:guest]).id, host_id: current_user.id, meet_location: params[:meet_location], start_time: params[:start_time], end_time: params[:end_time], summary: params[:summary])
    redirect_to users_show_path(@current_user)

  end
end
