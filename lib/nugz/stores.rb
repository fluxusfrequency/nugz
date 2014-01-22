module Nugz
  class Stores

    def self.all
      response = Faraday.get('http://www.milehighbuzz.co/api/v1/stores')
      JSON.parse(response.body)
    end

    def self.find_store(slug)
      response = Faraday.get("http://www.milehighbuzz.co/api/v1/stores/#{slug}")
      JSON.parse(response.body)
    end

  end
end