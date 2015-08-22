require 'rails_helper'

RSpec.describe User, type: :model do
  it "correctly sets the users age" do
    user = create(:user, birthday: "1984-04-13")
    expect(user.age).to eq 31
  end
end
