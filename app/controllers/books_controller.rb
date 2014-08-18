class BooksController < ApplicationController
  before_action :authenticate_author!

  def index
    @books = Book.all

    respond_to do |format|
      format.html { }
      format.json { render :json => @books }
    end
  end

  def new
    @book = Book.new

  end

  def create
    @book = Book.new book_params
    @current_author_id = @book.author_id


    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def edit
    @book = Book.find params[:id]


  end

  def show
    @book = Book.find params[:id]


  end

  def update
    book = Book.find params[:id]
    book.update book_params


    redirect_to book
  end

  def destroy
    book = Book.find params[:id]
    book.destroy

    flash[:notice] = "The book is now deleted. "
    redirect_to book
  end

  private
    def book_params
      params.require(:book).permit(:title, :author_id)
    end

end

             # book_index GET    /book(.:format)                  book#index
             #           POST   /book(.:format)                  book#create
             #      new_book GET    /book/new(.:format)              book#new
             #     edit_book GET    /book/:id/edit(.:format)         book#edit
             #          book GET    /book/:id(.:format)              book#show
             #               PATCH  /book/:id(.:format)              book#update
             #               PUT    /book/:id(.:format)              book#update
             #               DELETE /book/:id(.:format)              book#destroy


