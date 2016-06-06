class UserMailer < ActionMailer::Base
  default :from => ENV["ADR_LANDING"]

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def envoi_form_email
    mail( :to => ENV["GMAIL_USERNAME"],
    :subject => 'Formulaire Landing Page' )
  end
end
