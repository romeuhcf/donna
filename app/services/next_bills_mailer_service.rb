class NextBillsMailerService
  def run
    bills_coming = Contract.coming

    return unless bills_coming.any?

    User.each do |user|
      NextBillsMailer.bills_coming(user, bills_coming).deliver_now
    end
  end
end
