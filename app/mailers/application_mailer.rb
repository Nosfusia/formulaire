class ApplicationMailer < ActionMailer::Base
  default from: 'delvasylvain@hotmail.fr'
  layout 'mailer'

  # attachment = SendGrid::Attachment.new
  # attachment.type = 'application/pdf'
  # attachment.filename = "#{filename}.pdf"
  # attachment.disposition = 'attachment'
  # attachment.content_id = @params[:subject]
  # mail.attachments = attachment
end
