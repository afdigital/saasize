class CreateSaasizeAccounts < ActiveRecord::Migration
  def change
    create_table :saasize_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
