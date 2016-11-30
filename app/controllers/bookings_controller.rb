class BookingsController < ApplicationController

  def request_booking

  end

  def post_booking

    times = {"Austin" =>  21600, "Chicago" =>  21600, "New York" => 18000, "Los Angeles" => 28800, "Seattle" =>  28800}
    binding.pry
    start_time = params[:start_time].to_datetime
    start_time = start_time.utc + times[session[:location]]

    end_time = params[:end_time].to_datetime
    end_time = end_time.utc + times[session[:location]]

    Booking.create(guest_id: User.find_by(email: params[:guest]).id, host_id: current_user.id, meet_location: params[:meet_location], start_time: start_time, end_time: end_time, summary: params[:summary])
    redirect_to users_show_path(current_user)
  end

  def edit_booking
    times = {"Austin" =>  21600, "Chicago" =>  21600, "New York" => 18000, "Los Angeles" => 28800, "Seattle" =>  28800}
    @booking = Booking.find(params[:id])
    @booking.start_time -= times[current_user.homebase]
    @booking.end_time -= times[current_user.homebase]
  end

  def update_booking
   times = {"Austin" =>  21600, "Chicago" =>  21600, "New York" => 18000, "Los Angeles" => 28800, "Seattle" =>  28800}

    start_time = params[:booking][:start_time].to_datetime
    start_time = start_time.utc + times[session[:location]]

    end_time = params[:booking][:end_time].to_datetime
    end_time = end_time.utc + times[session[:location]]

    b = Booking.find(params[:booking][:id])
    b.update(params.require(:booking).permit(:id, :guest_id, :host_id, :meet_location, :start_time, :end_time, :summary))
    b.save
    redirect_to users_show_path(current_user)
  end

  def cancel
    Booking.find(params[:id]).destroy
    redirect_to users_show_path(current_user)
  end
end
