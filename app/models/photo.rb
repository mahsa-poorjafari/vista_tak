# encoding: UTF-8
class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "300x350>", :horizantal => "300X400>"}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  belongs_to :category
  belongs_to :sub_group
  belongs_to :product
  
  def description   
    if I18n.locale == :en
      self.read_attribute("description_en")
    else
      self.read_attribute("description_fa")
    end    
  end
end
