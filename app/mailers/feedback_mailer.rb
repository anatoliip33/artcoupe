class FeedbackMailer < ActionMailer::Base
  default from: "testnikart@gmail.com",
          subject: "artcoupe feedback."

  def information_request (email, text)
    settings = Settings.first
    @email = email
    @text = text
    mail(
      :to => settings.feedback_email,
    ) do |format|
      format.html {
        render 'information_request'
      }
    end
  end
end
