class NextBillsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.next_bills_mailer.bills_coming.subject
  #
  def bills_coming(user, bills)
    @user = user
    @bills = bills

    mail to: user.email, subject: "Contas chegando ::#{Date.today}", from: "Donnna <#{ENV['GMAIL_SENDER']}>"
  end
end
