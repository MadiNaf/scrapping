#! /usr/bin/env ruby

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'
require 'uri'
#-----------------------------------------------------------------------------------
def get_all_crypto_names(page)
	crypto_names = []
	idx = 0
	page.xpath('//a[@class="currency-name-container"]').each do |name|
		crypto_names[idx] = name.content
		idx += 1
	end 
	return crypto_names
end 
#-----------------------------------------------------------------------------------

market = Nokogiri::HTML(open(' https://coinmarketcap.com/all/views/all'))

puts get_all_crypto_names()
