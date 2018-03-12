class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.datetime :real_begin_at
      t.datetime :real_end_at
      t.decimal5 :base_value
      t.decimal2 :base_value
      t.integer :due_day
      t.decimal5 :annual_interest_rate
      t.decimal2 :annual_interest_rate
      t.decinal5 :late_payment_interest_rate
      t.decinal2 :late_payment_interest_rate
      t.decimal5 :late_payment_single_fee
      t.decimal2 :late_payment_single_fee
      t.decimal5 :late_payment_daily_fee
      t.decimal2 :late_payment_daily_fee
      t.belongs_to :payment_mode, foreign_key: true
      t.string :contract_access_url
      t.string :contract_access_phone

      t.timestamps
    end
  end
end
