# Preview all emails at http://localhost:3000/rails/mailers/next_bills_mailer
class NextBillsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/next_bills_mailer/bills_coming
  def bills_coming
    NextBillsMailerMailer.bills_coming
  end

end
