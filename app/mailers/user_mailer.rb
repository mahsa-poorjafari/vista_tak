class UserMailer < ActionMailer::Base
  def send_user_msg
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "Message from Vistatech Site", :from => "Info@VTP.Co.IR")
  end  
end
