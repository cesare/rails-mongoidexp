class AuthorMailer < ApplicationMailer
  def welcome
    @author = params[:author]

    mail to: "to@example.org"
  end
end
