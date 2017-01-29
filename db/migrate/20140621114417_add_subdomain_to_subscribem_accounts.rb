class AddSubdomainToSaasizeAccounts < ActiveRecord::Migration
  def change
    add_column :saasize_accounts, :subdomain, :string
    add_index :saasize_accounts, :subdomain
  end
end
