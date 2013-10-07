class MuseumItem < ActiveRecord::Base

  validates_presence_of :name, :inventory_number

  attr_accessible :acquisition_date, :depth, :description, :height, :material, :name, :origin, :width, :picture, :inventory_number, :status, :notes
  has_attached_file :picture, :styles => { :medium => "360x270>", :thumb => "64x48>" }, :default_url => "/images/missing.png"
end
