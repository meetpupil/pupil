class Mentor < MailForm::Base
  attribute :name,       :validate => true
  attribute :school,     :validate => true
  attribute :major,      :validate => true
  attribute :date,       :validate => true
  attribute :linkedin,   :validate => false
  attribute :github,     :validate => false
  attribute :website,    :validate => false
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :source,     :validate => true
  attribute :message,    :validate => true
  attribute :nickname,   :captcha  => true
  
  def headers
    {
      :subject => "Mentor Application Form",
      :to => "jim@devpupil.org",
      :from => %("#{name}" <#{email}>)
    }
  end
end