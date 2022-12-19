class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def show
    @book = Book.find(params[:id])
  end
end

private

def book_params
  params.require(:book).permit(:title, :author, :description, :category, :delivery_price, :availability, :photo)
end
