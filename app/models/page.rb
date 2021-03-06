# encoding: UTF-8
class Page < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa 
  def title    
    if I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
  
  def description    
    if I18n.locale == :en
      self.read_attribute("description")
    else
      self.read_attribute("description_fa")
    end    
  end
  
end
