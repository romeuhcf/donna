# == Schema Information
#
# Table name: contracts
#
#  id                         :integer          not null, primary key
#  payment_mode_id            :integer
#  real_begin_at              :datetime
#  real_end_at                :datetime
#  base_value                 :decimal(8, 2)
#  due_day                    :integer
#  annual_interest_rate       :decimal(8, 2)
#  late_payment_interest_rate :decimal(8, 2)
#  late_payment_single_fee    :decimal(8, 2)
#  late_payment_daily_fee     :decimal(8, 2)
#  contract_access_url        :string
#  contract_access_phone      :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

class Contract < ApplicationRecord
  belongs_to :payment_mode
  has_paper_trail
end
