class CreateBankAgences < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_agences do |t|
      t.string :agence
      t.string :address

      t.timestamps
    end
  end
end
