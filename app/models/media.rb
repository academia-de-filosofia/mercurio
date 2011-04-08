class Media < ActiveRecord::Base
  belongs_to :mediaType
  belongs_to :genre
end
