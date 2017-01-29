class AddPlanIdToSaasizeAccounts < ActiveRecord::Migration
  def change
    add_column :saasize_accounts, :plan_id, :integer
  end
end
