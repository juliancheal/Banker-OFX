unless ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec'
  end
end

require 'rspec'
require 'ofx'

RSpec.configure do |config|
  config.order = :rand

  # TODO: Change Should to Expect
  config.expect_with(:rspec) { |c| c.syntax = :should }
end

RSpec::Matchers.define :have_key do |key|
  match do |hash|
    hash.respond_to?(:keys) &&
      hash.keys.is_a?(Array) &&
      hash.keys.include?(key)
  end
end
