# Nugz

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'nugz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nugz

## Usage

The Nugz gem makes it easy to consume the MileHigh API, which
can be found at http://www.milehighbuzz.co/api/v1/reviews
and http://www.milehighbuzz.co/api/v1/stores.

To get information about reviews and stores, use Nugz::Reviews and Nugz::Stores.
Here are the methods that they provide:

`Nugz::Reviews.all` gives back an array of hashes that contain information
about all of the reviews in the system.

`Nugz::Reviews.find_store(slug)` gives back an array of hashes that each contain
a review about that store. You need to pass in the slugified version of the
store name to use this method.

`Nugz::Stores.all` gives back an array of hashes that contain information
about all of the stores in the system.

`Nugz::Stores.find_store(slug)` gives back a hash that contains the information
about the store searched for. You need to pass in the slugified version of the
store name to use this method.



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
