ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

#below is a recommended line but it doesnt look to be necessary
# ENV['EXECJS_RUNTIME'] = 'Node'

require 'bundler/setup' # Set up gems listed in the Gemfile.
require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
