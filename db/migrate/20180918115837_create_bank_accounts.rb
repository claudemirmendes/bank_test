class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.integer :bank_id
      t.integer :number
      t.integer :limit

      t.timestamps
    end
  end
end
