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

  describe Artboard do
    it "has a valid factory" do
      expect(create(:artboard)).to be_valid
    end

    it "is invalid without author" do
      expect(build(:artboard, author_id: nil)).to \
      have(1).errors_on(:author_id)
    end

    it "is invalid without title" do
      expect(build(:artboard, title: nil)).to \
      have(1).errors_on(:title)
    end

    it "is invalid without image" do
      expect(build(:artboard, image: nil)).to \
      have(1).errors_on(:image)
    end

    it "is invalid without story" do
      expect(build(:artboard, story: nil)).to \
      have(1).errors_on(:story)
    end

    it { should belong_to(:author) }

  end
