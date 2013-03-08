class MuseumItem < ActiveRecord::Base
  attr_accessible :age, :depth, :description, :height, :material, :name, :origin, :technique, :width, :picture
  has_attached_file :picture, :styles => { :medium => "640x480>", :thumb => "64x48>" }, :default_url => "/images/missing.png"
end
