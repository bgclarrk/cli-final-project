require 'nokogiri'
require 'open-uri'
require 'bundler'
require 'pry'

Bundler.require

require_relative '../lib/cli'
require_relative '../lib/brand_scraper'
require_relative '../lib/cigar_scraper'
require_relative '../lib/brand'
require_relative '../lib/cigar'