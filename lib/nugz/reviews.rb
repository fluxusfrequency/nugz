module Nugz
  class Reviews
    def self.all
      response = Faraday.get('http://www.milehighbuzz.co/api/v1/reviews')
      JSON.parse(response.body)
    end

    def self.for_store(slug)
      response = Faraday.get("http://www.milehighbuzz.co/api/v1/reviews/store/#{slug}")
      JSON.parse(response.body)
    end
  end
end