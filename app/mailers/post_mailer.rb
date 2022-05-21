class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.published.subject
  #
  def published
    @post = params[:post]
    mail to: "to@example.org"
  end
end
