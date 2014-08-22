# == Schema Information
#
# Table name: authors
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe Author do
  it "has a valid factory" do
    expect(create(:author)).to be_valid
  end

  it "is invalid without name" do
    expect(build(:author, name: nil)).to \
    have(1).errors_on(:name)
  end

  it "is invalid without email" do
    expect(build(:author, email: nil)).to \
    have(1).errors_on(:email)
  end

  it "is invalid without password" do
    expect(build(:author, password: nil)).to \
    have(1).errors_on(:password)
  end

  it { should have_many (:artboards)}

end
