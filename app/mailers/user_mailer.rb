class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.jobs.subject
  #
  def jobs(user)
    @user_job = user_job
  	@user = user
    @greeting = "Hi, #{user_job.user.name} #{user_job.user.surname}" 
    mail to: user.email, subject: "Thank you from Little Pig Recruitment", from: "info@littlepig.cc"
  end
end
