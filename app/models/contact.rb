class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  captcha: true

  def headers
    {
      subject: "#{I18n.t('models.contact.subject').capitalize} #{name}",
      to: ABOUT['email'],
      from: %("#{name}" <#{email}>)
    }
  end
end
