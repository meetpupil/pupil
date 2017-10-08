class Contact < MailForm::Base
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject,    :validate => true
  attribute :message,    :validate => true
  attribute :nickname,   :captcha  => true
  
  def headers
    {
      :subject => "Contact Form",
      :to => "jimmy@devpupil.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end