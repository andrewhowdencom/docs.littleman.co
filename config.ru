#!/usr/bin/env ruby
require 'rubygems'
require 'gollum/app'

gollum_path = '/data/www/gollum/dev.howden.io'

Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown) # set your favorite markup language
Precious::App.set(:wiki_options, {
    :universal_toc => true,
    :allow_uploads => false, 
    :allow_editing => true,
    :page_file_dir => "docs"
})
run Precious::App
