class Demo < MailForm::Base
  attribute :name,         :validate => true
  attribute :title,        :validate => true
  attribute :school,       :validate => true
  attribute :email,        :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :demographics, :validate => true
  attribute :message,      :validate => true
  attribute :nickname,     :captcha  => true
  
  def headers
    {
      :subject => "Demo Request Form",
      :to => "jimmy@devpupil.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end