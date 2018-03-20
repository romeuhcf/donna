class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.belongs_to :payment_mode, foreign_key: true
      t.datetime :real_begin_at
      t.datetime :real_end_at
      t.decimal :base_value, :precision => 8, :scale => 2
      t.integer :due_day
      t.decimal :annual_interest_rate, :precision => 8, :scale => 2
      t.decimal :late_payment_interest_rate, :precision => 8, :scale => 2
      t.decimal :late_payment_single_fee, :precision => 8, :scale => 2
      t.decimal :late_payment_daily_fee, :precision => 8, :scale => 2
      t.string :contract_access_url
      t.string :contract_access_phone

      t.timestamps
    end
  end
end
