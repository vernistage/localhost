class BookingsController < ApplicationController

  def request_booking

  end

  def post_booking

    Booking.create(guest_id: User.find_by(email: params[:guest]).id, host_id: current_user.id, meet_location: params[:meet_location], start_time: params[:start_time], end_time: params[:end_time], summary: params[:summary])
    redirect_to users_show_path(@current_user)
  end

  def edit_booking
    @booking = Booking.find(params[:id])
  end

  def update_booking

    b = Booking.find(params[:booking_id])
    b.guest_id = User.find_by(email: params[:guest]).id
    b.host_id = current_user.id
    b.meet_location = params[:meet_location]
    b.start_time = params[:start_time]
    b.end_time = params[:end_time]
    b.summary = params[:summary]
    b.save
    redirect_to users_show_path(@current_user)
  end

end
