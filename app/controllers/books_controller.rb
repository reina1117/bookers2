class BooksController < ApplicationController
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def show
  end

  def edit
    @books = Book.all
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
