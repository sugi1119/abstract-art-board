class BooksContoroller < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html {}
      format.json { render :json => @books}
    end
  end

  def new
    @book = Book.new

  end

  def create
    @book = Book.new book_params
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def update

  end

  def delete
  end

  private
  def book_params
    params.require(:book).permit(:title, :author_id)
  end

end





# book_index_path GET /book(.:format) book#index
# POST  /book(.:format) book#create
# new_book_path GET /book/new(.:format) book#new
# edit_book_path  GET /book/:id/edit(.:format)  book#edit
# book_path GET /book/:id(.:format) book#show
# PATCH /book/:id(.:format) book#update
# PUT /book/:id(.:format) book#update
# DELETE  /book/:id(.:format) book#destroy