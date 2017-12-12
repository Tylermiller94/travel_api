require 'rails_helper'

describe 'post a review route', :type => :request do
  let!(:destination) {FactoryBot.create(:destination) }
  let!(:user) {FactoryBot.create(:user)}

  before do
    post "/api/v1/destinations/#{destination.id}/reviews", params: { :author => 'test_author', :content => 'test_content', :rating => 5}
  end

  it 'returns the review author' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the destination content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

end
