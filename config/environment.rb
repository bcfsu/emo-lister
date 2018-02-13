
require 'bundler'
Bundler.require

require_all './lib'
# require "emo_lister/version"

require 'open-uri'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

# module EmoLister
#   # Your code goes here...
# end
