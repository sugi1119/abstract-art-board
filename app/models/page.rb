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

class Page < ActiveRecord::Base
  belongs_to :book
end
