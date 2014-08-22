require 'rails_helper'

RSpec.describe ArtboardsController, :type => :controller do

  describe 'GET /artboard' do
    before do
      @a1 = Artboard.create(:title => "test title", :author_id => 1)

  end

  describe 'as HTML' do
    before do
      get :index
    end

    # it 'should respond with a status 200' do
    #   expect(response).to be_sucess
    #   expect(response.status).to eq(200)
    # end


    # it 'should render the artboard index template' do
    #     expect(response).to render_template('index')
    #   end
  end


  end


end
