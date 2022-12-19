class ReservationsController < ApplicationController
  def new
    @book = Book.find(params[:book_id]) # on a besoin avant d'avoir l'id du book pour savoir pour quel book on crée la résa
    @reservation = Reservation.new # on crée la nouvelle résa
  end

  def create
    @reservation = Reservation.new(reservation_params) # build the reservation with start_date and end date
    @book = Book.find(params[:book_id]) # find the book I want to reservate
    @reservation.book = @book # associate reservation with book
    @reservation.save # save the resa
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
	  params.require(:reservation).permit(:start_date, :end_date) # strong_params pour les champs de reservations
	end

end
