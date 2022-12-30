class ReservationsController < ApplicationController
  before_action :set_book, only: [:new, :create]

  def new
    # @book = Book.find(params[:book_id])il faut l'id du book pour savoir pour quel book on crée la résa. ligne commentée car refactorisée
    @reservation = Reservation.new # on crée la nouvelle résa
  end

  def create
    # @book = Book.find(params[:book_id]) # find the book I want to reservate. ligne commentée car refactorisée
    @reservation = Reservation.new(reservation_params) # build the reservation with start_date and end_date
    @reservation.book = @book # associate the reservation with the book
    @reservation.user = current_user # associate the reservation with user logged-in (cf Devise)
    if @reservation.save # reminder -> at save the resa gets its own id
      redirect_to book_path(@book), notice: "Congrats you've booked #{@book.title}"
    else
      redirect_to book_path(@book), notice: "Sorry, the reservation did not work; please try again", status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id]) # no need to go through the book id as the resa is created and has now an id
  end

  private

  def set_book
    @book = Book.find(params[:book_id]) # refactorisation sur l'id book
  end

  def reservation_params
	  params.require(:reservation).permit(:start_date, :end_date) # strong_params pour les champs de reservations
	end

end
