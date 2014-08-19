class PagesController < ApplicationController


  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def page_params
    params.require(:page).permit(:page_number, :text, :image, :sound, :book_id)
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