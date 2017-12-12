require 'rails_helper'

describe 'get destinations reviews route', :type => :request do
  let!(:destination) {FactoryBot.create(:destination) }
  let!(:user) {FactoryBot.create(:user)}
  let!(:review) {FactoryBot.create_list(:review, 20, destination: destination, user_id: user.id)}

  before { get "/api/v1/destinations/#{destination.id}/reviews" }

  it 'returns all reviews for destination' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
