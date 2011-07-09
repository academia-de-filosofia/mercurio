require 'spec_helper'

describe Media do
  
  fixtures :medias, :genres, :media_types
  
  let!(:harry_potter) { medias(:harry_potter) }
  let!(:the_lord_of_rings) { medias(:the_lord_of_rings) }
  
  
  it "should not allow two medias in the same genre and code" do
    the_lord_of_rings.genre = genres(:fiction)
    the_lord_of_rings.code = 1
    the_lord_of_rings.save.should be_true
    
    harry_potter.genre = genres(:fiction)
    harry_potter.code = 1
    harry_potter.save.should be_false
    puts harry_potter.errors[:code].should include(I18n.t('activerecord.errors.models.media.attributes.code.taken'))
  end
  
  
end
