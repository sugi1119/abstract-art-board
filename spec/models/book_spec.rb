# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

  describe Book do
    it "has a valid factory" do
      expect(create(:book)).to be_valid
    end

    it { should belong_to(:author) }

  end
