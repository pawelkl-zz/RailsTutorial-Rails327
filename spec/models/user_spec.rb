# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  before { @user = User.new(name: "Example", email: "ex@sample.com") }
  subject{ @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end
