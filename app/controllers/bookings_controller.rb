class BookingsController < ApplicationController

  def request_booking

  end

  def post_booking

    times = {"Austin" =>  21600, "Chicago" =>  21600, "New York" => 18000, "Los Angeles" => 28800, "Seattle" =>  28800}

    start_time = params[:start_time]
    start_time += ":00+00:00"
    start_time = DateTime.strptime(start_time).utc + times[session[:location]]
    end_time = params[:end_time]
    end_time += ":00+00:00"
    end_time = DateTime.strptime(end_time).utc + times[session[:location]]
    Booking.create(guest_id: User.find_by(email: params[:guest]).id, host_id: current_user.id, meet_location: params[:meet_location], start_time: start_time, end_time: end_time, summary: params[:summary])
    redirect_to users_show_path(@current_user)
  end

  def edit_booking
    @booking = Booking.find(params[:id])
  end

  def update_booking
   times = {"Austin" =>  21600, "Chicago" =>  21600, "New York" => 18000, "Los Angeles" => 28800, "Seattle" =>  28800}

    start_time = params[:start_time]
    start_time += ":00+00:00"
    start_time = DateTime.strptime(start_time).utc + times[session[:location]]
    end_time = params[:end_time]
    end_time += ":00+00:00"
    end_time = DateTime.strptime(end_time).utc + times[session[:location]]

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

  def cancel
    Booking.find(params[:id]).destroy
    redirect_to users_show_path(current_user)
  end
end
