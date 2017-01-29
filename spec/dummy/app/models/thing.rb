class Thing < ActiveRecord::Base
  extend Saasize::ScopedTo
  def self.scoped_to(account)
    where(:account_id => account.id)
  end
end