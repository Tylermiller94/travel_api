require 'rails_helper'

describe 'get destination with city search', :type => :request do
  let!(:destination) { FactoryBot.create(:destination)}

  before { get "/api/v1/destinations?city=#{destination.city}"}

  it 'returns destination' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

end
