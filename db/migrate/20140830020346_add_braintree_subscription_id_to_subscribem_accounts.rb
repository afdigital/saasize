class AddBraintreeSaasizeIdToSaasizeAccounts < ActiveRecord::Migration
  def change
    add_column :saasize_accounts, :braintree_subscription_id, :string
  end
end
