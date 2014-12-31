# encoding: UTF-8
class Product < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_many :photos
  belongs_to :sub_group
  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
  
  validates :title_fa, :title, :presence => {:message => 'فیلدهای ضروری را پر کنید'}
  validates :title_fa, :title, :uniqueness => {:message => 'عنوان تکراری است'}
  def title
    if I18n.locale == :en
      self.read_attribute("title")
    else 
      self.read_attribute("title_fa")
    
    end    
  end
  
  def description   
    if I18n.locale == :en
      self.read_attribute("description_")
    else
      self.read_attribute("description_fa")
    end    
  end
end
