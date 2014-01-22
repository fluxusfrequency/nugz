require './lib/nugz'

describe Nugz::Stores do
  it "should exist" do
    expect(Nugz::Stores).to be
  end

  it "should fetch all stores from the API" do
    result = Nugz::Stores.all
    expect(result).to have_at_least(3).items
    expect(result).to be_a_kind_of(Array)
    expect(result.first).to be_a_kind_of(Hash)
    expect(result.first).to have_key("slug")
    expect(result.first).to have_key("name")
    expect(result.first).to have_key("address")
    expect(result.first).to have_key("city")
    expect(result.first).to have_key("state")
    expect(result.first).to have_key("zipcode")
    expect(result.first).to have_key("hours")
    expect(result.first).to have_key("website")
    expect(result.first).to have_key("phone_number")
    expect(result.first).to have_key("menu")
    expect(result.first["slug"]).to_not eq("")
    expect(result.first["name"]).to_not eq("")
  end

  it "should fetch a single store from the API" do
    to_find = Nugz::Stores.all.first["slug"]

    result = Nugz::Stores.find_store(to_find)
    expect(result).to be_a_kind_of(Hash)
    expect(result).to have_key("slug")
    expect(result).to have_key("name")
    expect(result).to have_key("address")
    expect(result).to have_key("city")
    expect(result).to have_key("state")
    expect(result).to have_key("zipcode")
    expect(result).to have_key("hours")
    expect(result).to have_key("website")
    expect(result).to have_key("phone_number")
    expect(result).to have_key("menu")
    expect(result["slug"]).to eq(to_find)
    expect(result["name"]).to_not eq("")
  end
end





describe Nugz::Reviews do
  it "should exist" do
    expect(Nugz::Reviews).to be
  end

  it "should fetch all reviews from the API" do
    result = Nugz::Reviews.all
    expect(result).to have_at_least(3).items
    expect(result).to be_a_kind_of(Array)
    expect(result.first).to be_a_kind_of(Hash)
    expect(result.first).to have_key("user_id")
    expect(result.first).to have_key("store_id")
    expect(result.first).to have_key("rating")
    expect(result.first).to have_key("title")
    expect(result.first).to have_key("body")
    expect(result.first["store_id"]).to_not eq("")
  end

  it "should fetch all reviews for a single store from the API" do
    to_find = Nugz::Stores.all.first["slug"]
    result = Nugz::Reviews.for_store(to_find)
    expect(result).to be_a_kind_of(Array)
    expect(result.first).to have_key("slug")
    expect(result.first["slug"]).to eq(to_find)

    expect(result.last).to have_key("rating")
    expect(result.last).to have_key("title")
    expect(result.last).to have_key("body")
  end

end