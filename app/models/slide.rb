# encoding: UTF-8
class Slide < ActiveRecord::Base
  has_attached_file :image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "580x360>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  
  def description    
    if I18n.locale == :en
      self.read_attribute("description")
    else
      self.read_attribute("description_fa")
    end    
  end
  def title
    if I18n.locale == :en
      self.read_attribute("title")
    else 
      self.read_attribute("title_fa")
    
    end    
  end
end
