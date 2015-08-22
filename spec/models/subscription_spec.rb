require 'rails_helper'

RSpec.describe Subscription, type: :model do
  it "discount should eq 10 when user is 65 or older" do
    user = create(:user, birthday: '1950-08-10')
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "discount should eq 10 when user is arts worker" do
    user = create(:user, arts_worker: true)
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "discount should eq 10 when user is student" do
    user = create(:user, student: true)
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "discount should eq 0 when user is not a student, arts_worker or senior" do
    user = create(:user)
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 0
  end

  it "discount should eq 10 when user is a combo of student and arts worker" do
    user = create(:user, student: true, arts_worker: true)
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "discount should eq 10 when user is a combo of student and senior" do
    user = create(:user, student: true, birthday: '1950-08-10')
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "discount should eq 10 when user is a combo of student and arts worker" do
    user = create(:user, arts_worker: true, birthday: '1950-08-10')
    subscription = user.subscriptions.create
    expect(subscription.discount).to eq 10
  end

  it "Year should be currrent year when subscription is created" do
    user = create(:user)
    subscription = user.subscriptions.create
    expect(subscription.year).to eq Time.now().year
  end
end
