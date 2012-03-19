class Loan < ActiveRecord::Base
  belongs_to :media
  belongs_to :person
  validate :media_is_available
  default_scope order('lent_at desc')
  
  def set_return_preview
    if self.media and self.media.media_type
      self.return_preview_date = Time.now + media.media_type.loan_days.days
    end
  end

  def status_description
    media.media_status.try(:description)
  end

  def media_is_available
   unless media.available?
      errors.add(:media, 'Nao esta disponivel')
    end
  end
  
  def return    
    self.returned_at = Time.now
    self.save
    self.media.return
    self.save
  end
  
  def self.search(media_status_id = nil, page = 1)    
    if media_status_id.to_i > 0
      Loan.joins(:media).where('media_status_id = :media_status_id', :media_status_id => media_status_id).paginate :page => page, :per_page => 50
    else
      Loan.paginate :page => page, :per_page => 50
    end
  end
  
end