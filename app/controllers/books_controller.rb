class BooksController < ApplicationController
before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
    # creating a method with Active Record for the search bar on the index:
    if params[:query].present?
      sql_query = "title ILIKE :query OR author ILIKE :query OR category ILIKE :query"
      @books = Book.where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end

  def new
    @book = Book.new
  end

  def create
    # @new_book = Book.new # line commented cf refactored code
    @book = Book.new(book_params)
    @book.user = current_user # associate the book with user logged in (Devise)
    if @book.save
      redirect_to books_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @book = Book.find(params[:id]) # line commented cf refactored code
    @reservation = Reservation.new # associate the reservation with the book to allow display it on the book view
  end

  def edit
    # @book = Book.find(params[:id]) # line commented cf refactored code
  end

  def update
    # @book = Book.find(params[:id]) # line commented cf refactored code
    if @book.update(book_params)
      redirect_to book_path(@book)
    end
  end

  def destroy
    # @book = Book.find(params[:id]) # line commented cf refactored code
    if @book.destroy
      redirect_to books_path, status: :see_other
    end
  end
end

private

def set_book
  @book = Book.find(params[:id])
end

def book_params
  params.require(:book).permit(:title, :author, :description, :category, :delivery_price, :availability, :photo)
end
