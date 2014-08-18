require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe 'GET /books' do
    before do
      @b1 = Book.create(:title => "test title", :author_id => 1)

  end

  describe 'as HTML' do
    before do
      get :index
    end

    it 'should respond with a status 200' do
      expect(response).to be_sucess
      expect(response.status).to eq(200)
    end

    # it 'should list all books' do
    #     # expect(assigns(:books)).to be
    #     # expect(assigns(:books).first.class).to eq(Book)
    #     # expect(assigns(:books).first.title).to eq('test title')
    #   end

    it 'should render the books index template' do
        expect(response).to render_template('index')
      end
  end


end



#     describe "with valid params" do
#       it "displays all books" do
#         expect{
#           get :index, book: FactoryGirl.build(:book)
#         }.to display
#       end
#     end
# end

end
