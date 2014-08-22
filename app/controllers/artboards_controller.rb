class ArtboardsController < ApplicationController
  before_action :authenticate_author!

  def index
    @artboards = Artboard.all

    respond_to do |format|
      format.html { }
      format.json { render :json => @artboards }
    end
  end

  def new
    @artboard = Artboard.new
    @artboard.author_id = current_author.id


  end

  def create
    @artboard = Artboard.new book_params
    @artboard.author_id = current_author.id

    if @artboard.save
      redirect_to @artboard
    else
      render :new
    end
  end

  def edit
    @artboard = Artboard.find params[:id]


  end

  def show
    @artboard = Artboard.find params[:id]


    # raise 'error'
  end

  def update
    artboard = Artboard.find params[:id]
    artboard.update artboard_params

    redirect_to artboard
  end

  def destroy
    artboard = Artboard.find params[:id]
    artboard.destroy

    flash[:notice] = "The art is now deleted. "
    redirect_to artboards_path
  end

  private
    def artboard_params
      params.require(:artboard).permit(:title, :author_id, :image, :story)
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


