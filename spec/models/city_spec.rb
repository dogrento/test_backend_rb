require 'spec_helper'
# require './app/controllers/cities_controller'

RSpec.describe City, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe '#search' do
    it 'returns a list of cities when a valid search term is provided' do
      # Arrange
      search_term = 'London'

      # Act
      results = City.connection

      puts(results.index_name)

      # Assert
      # expect(results.count).to be > 0
      # expect(results.first).to be_a(City)
    end
  end

end
