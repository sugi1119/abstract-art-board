# == Schema Information
#
# Table name: artboards
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author_id  :integer
#  image      :text
#  story      :text
#  created_at :datetime
#  updated_at :datetime
#

class Artboard < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true
  validates :author_id, presence: true
  validates :image, presence: true
  validates :story, presence: true
end
