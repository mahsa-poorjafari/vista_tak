class User < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :user_name
end
