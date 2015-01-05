class StaticController < ApplicationController
  def home
    @slider = Slide.all
    @categories = Category.all
    @about = Page.where(title_en: 'About Us')
    @contact = Page.where(title_en: 'Contact Us')
    
  end
end
