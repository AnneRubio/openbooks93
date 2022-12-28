class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    # @new_book = Book.new
    @book = Book.new(book_params)
    @book.user = current_user # associate the book with user logged in (Devise)
    if @book.save
      redirect_to books_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find(params[:id])
    @reservation = Reservation.new # reservation is nested to book
  end
end

private

def book_params
  params.require(:book).permit(:title, :author, :description, :category, :delivery_price, :availability, :photo)
end
