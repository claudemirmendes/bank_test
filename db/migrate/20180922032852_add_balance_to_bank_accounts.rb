class AddBalanceToBankAccounts < ActiveRecord::Migration[5.2]
  def change
  	add_column :bank_accounts, :balance, :float
  end
end
