require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'bundler'
require 'pry'

Bundler.require

require_relative '../lib/cli.rb'
require_relative '../lib/brand_scraper.rb'
require_relative '../lib/cigar.rb'
require_relative '../lib/brand.rb'
