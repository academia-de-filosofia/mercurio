class MuseumItem < ActiveRecord::Base

  validates_presence_of :name, :inventory_number

  attr_accessible :acquisition_date, :depth, :description, :height, :material, :name, :origin, :width, :picture, :inventory_number, :status, :notes
  has_attached_file :picture, :styles => { :medium => "360x270>", :thumb => "64x48>" }, :default_url => "/images/missing.png"
  
  def self.search(query, page = 1)    
    if query
      MuseumItem.where('upper(name) LIKE upper(:query) or inventory_number LIKE upper(:query)', :query => "%#{query}%").paginate :page => page, :per_page => 50
    else
      MuseumItem.paginate :page => page, :per_page => 20
    end
  end
end
