require "rails_helper"
ENV['GMAIL_SENDER'] ="gmail@sender.com"
RSpec.describe NextBillsMailer, type: :mailer do
  describe "bills_coming" do
    let(:today){Date.today.day}
    let(:tomorrow){today+1}
    let(:soon){today+3}
    let(:contracts) { Contract.all }
    let(:user) {User.create!(email: 'sample@example.com',
                             password: 'xxxxxxx', password_confirmation: 'xxxxxxx')}
    let(:mail) { NextBillsMailer.bills_coming(user, contracts) }
    before do
      Contract.create!(due_day: today,
                       name: 'carro',
                       base_value: 1000,
                       payment_mode: PaymentMode.create(:name => 'debito'))
      Contract.create!(due_day: tomorrow,
                       name: 'aluguel',
                       base_value: 1000,
                       payment_mode: PaymentMode.create(:name => 'especie'))
      Contract.create!(due_day: soon,
                       name: 'cartao de credito',
                       base_value: 2000,
                       payment_mode: PaymentMode.create(:name => 'outro'))
      Contract.create!(due_day: 100,
                       name: 'motel',
                       base_value: 2000,
                       payment_mode: PaymentMode.create(:name => 'outro'))
    end

    it "renders the headers" do
      expect(mail.subject).to start_with("Contas chegando")
      expect(mail.to).to eq(["sample@example.com"])
      expect(mail.from).to eq(["gmail@sender.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to include(Contract.all.to_a[0].name)
      expect(mail.body.encoded).to include(Contract.all.to_a[1].name)
      expect(mail.body.encoded).to include(Contract.all.to_a[2].name)
      expect(mail.body.encoded).to_not include(Contract.all.to_a[3].name)
    end
  end

end
