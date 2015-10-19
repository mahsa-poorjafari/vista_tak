class StaticController < ApplicationController
  def index
    @slider = Slide.all
    @categories = Category.all
    @about = Page.where(title_en: 'About Us')
    @contact = Page.where(title_en: 'Contact Us')
  end
  def google46bde3a8d7d48d7d
  end
  def sitemap
  end
end
