require_dependency "saasize/application_controller"

module Saasize
  class Account::DashboardController < ApplicationController
    before_filter :authenticate_user!
  end
end
