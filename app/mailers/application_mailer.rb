class ApplicationMailer < ActionMailer::Base
  default to: "admin1@gmail.com", from: 'from@example.com'
  layout 'mailer'
end
