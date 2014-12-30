# encoding: UTF-8
class Page < ActiveRecord::Base

  def title    
    if I18n.locale == :en
      self.read_attribute("title")
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
