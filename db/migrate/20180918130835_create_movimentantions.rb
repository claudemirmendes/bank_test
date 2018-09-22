class CreateMovimentantions < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentantions do |t|
      t.integer :bank_account_id
      t.date :movimentation_date
      t.integer :value
      t.integer :movimentation_type
      t.integer :user_id

      t.timestamps
    end
  end
end
