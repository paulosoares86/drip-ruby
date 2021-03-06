$:.unshift File.expand_path('../../lib', __FILE__)

require "drip"
require "minitest/autorun"
require "shoulda-context"
require "mocha/setup"
# require "webmock/minitest"
# require "vcr"
require "faraday"

# VCR.configure do |c|
#   c.cassette_library_dir = 'test/cassettes'
#   c.hook_into :webmock # or :fakeweb
# end

class Drip::TestCase < Minitest::Test
  def expand_fixture_path(path)
    File.expand_path("../fixtures/#{path}", __FILE__)
  end

  def load_json_fixture(path)
    fixture_path = expand_fixture_path(path)
    JSON.parse(File.read(fixture_path))
  end
end
