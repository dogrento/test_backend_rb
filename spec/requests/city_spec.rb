require 'spec_helper'

RSpec.describe 'Cities', type: :request do
  describe 'GET /' do
    # pending "add some examples (or delete) #{__FILE__}"
    it 'routes / to the cities controller index method' do
      # expect(get: '/').to route_to( action: 'index')
      # expect(match(:get)).to route_to( action: "index")
      # expect(get('/')).to route_to('cities#index')
      get("/")
      expect(response).to be_successful
      expect(response.body).to include("Cities")
    end
  end
end
