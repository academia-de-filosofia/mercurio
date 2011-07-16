class Loan < ActiveRecord::Base
  belongs_to :media
  belongs_to :person
  validate :media_is_available
  
  def set_return_preview
    if self.media and self.media.media_type
      self.return_preview_date = Time.now + media.media_type.loan_days.days
    end
  end

  def media_is_available    
   unless media.available?
      errors.add(:media, 'Não está disponível')
    end
  end  
  
end
