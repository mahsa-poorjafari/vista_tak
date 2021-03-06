# encoding: UTF-8
class Category < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa  
  has_many :sub_groups
  has_many :photos
  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
  has_attached_file :icon, :styles => { :original => "700x650>" , :medium => "450x450>", :small => "150x150>"}
  validates_attachment_content_type :icon, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates :title_fa, :title_en, :presence => {:message => 'فیلدهای ضروری را پر کنید'}
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان تکراری است'}
  def title
    if I18n.locale == :en
      self.read_attribute("title_en")
    else 
      self.read_attribute("title_fa")
    
    end    
  end
  
  def description   
    if I18n.locale == :en
      self.read_attribute("description_en")
    else
      self.read_attribute("description_fa")
    end    
  end
  
end
