module Saasize
  class Member < ActiveRecord::Base
    belongs_to :account, :class_name => "Saasize::Account"
    belongs_to :user, :class_name => "Saasize::User"
  end
end