class PagesController < ApplicationController

  def index
    @pages = Page.all

    respond_to do |format|
      format.html { }
      format.json { render json: @pages }
    end
  end

  def new
     # raise 'error'
    @page = Page.new
    @book = Book.find params[:book_id]
    @page.book = @book
    # @page.book.author_id = current_author.id

  end

  def create
    raise 'error'
    @page = Page.new page_params
    # @book = Book.find params[:book_id]
    # @page.book = @book
    @page.book.author.author_id = current_author.id
    @page.book_id = page.book_id

    if @page.save
      redirect_to @page
    else
      render :new
    end

  end

  def edit
    @page = Page.find params[:id]
  end

  def show
    @page = Page.find params[:id]
  end

  def update
    page = Page.find params[:id]
    page.upate page_params
    raise 'error'
    redirect_to page
  end

  def destroy
    page = Page.find params[:id]
    page.destroy

    flash[:notice] = "The page is now deleted. "

    redirect_to pages_path
  end

  private
  def page_params
    params.require(:page).permit(:page_number, :text, :image, :sound, :book_id)
  end
end

#     pages GET    /pages(.:format)                 pages#index
#           POST   /pages(.:format)                 pages#create
#  new_page GET    /pages/new(.:format)             pages#new
# edit_page GET    /pages/:id/edit(.:format)        pages#edit
#      page GET    /pages/:id(.:format)             pages#show
#           PATCH  /pages/:id(.:format)             pages#update
#           PUT    /pages/:id(.:format)             pages#update
#           DELETE /pages/:id(.:format)             pages#destroy

# Table name: pages
#
#  id          :integer          not null, primary key
#  page_number :string(255)
#  text        :text
#  image       :text
#  sound       :text
#  book_id     :integer
#  created_at  :datetime
#  updated_at  :datetime