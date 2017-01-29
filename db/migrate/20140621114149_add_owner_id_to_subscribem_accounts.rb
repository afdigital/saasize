class AddOwnerIdToSaasizeAccounts < ActiveRecord::Migration
  def change
    add_column :saasize_accounts, :owner_id, :integer
  end
end
