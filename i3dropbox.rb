#!/usr/bin/env ruby
require 'rmagick'
require 'pp'
include Magick

background_color = "black"
dbox_version = "x86_64-3.4.6"
dbox_icon_folder = "~/.dropbox-dist/dropbox-lnx.#{dbox_version}/images/hicolor/16x16/status/"
dbox_icons = ["dropboxstatus-blank.png", "dropboxstatus-busy2.png", "dropboxstatus-logo.png", "dropboxstatus-busy.png", "dropboxstatus-idle.png", "dropboxstatus-x.png"]

dbox_icons.map! {|icon| dbox_icon_folder + icon}
#pp dbox_icons
dbox_icons.each do |png|
	icon_list = ImageList.new(File.expand_path(png,__FILE__))
	current_image = icon_list.cur_image 
	current_image.alpha(DeactivateAlphaChannel)
	current_image.background_color = background_color
	current_image.write(File.expand_path(png,__FILE__))
end
