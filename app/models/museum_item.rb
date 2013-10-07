class MuseumItem < ActiveRecord::Base

  validates_presence_of :name, :inventory_number

  attr_accessible :age, :depth, :description, :height, :material, :name, :origin, :width, :picture, :inventory_number
  has_attached_file :picture, :styles => { :medium => "360x270>", :thumb => "64x48>" }, :default_url => "/images/missing.png"
end
