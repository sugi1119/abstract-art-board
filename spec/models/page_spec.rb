# == Schema Information
#
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
#

require 'spec_helper'

describe Page do
  it "has a valid factory" do
    expect(create(:page)).to be_valid
  end

  it { should belong_to(:book) }



end