# == Schema Information
#
# Table name: payment_modes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PaymentMode < ApplicationRecord
  has_paper_trail
  has_many :contracts
  validates :name, presence: true
end
