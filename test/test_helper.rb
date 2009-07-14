require 'rubygems'
require 'active_support'
require 'active_support/test_case'
require 'test/unit'

ENV['RAILS_ENV'] = 'test'
ENV['RAILS_ROOT'] ||= File.dirname(__FILE__) + '/../../../..'

require File.expand_path(File.join(ENV['RAILS_ROOT'], 'config/environment.rb'))

ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")

require File.dirname(__FILE__) + '/../rails/init.rb'
