require "saasize/braintree_plan_fetcher"
namespace :saasize do
  desc "Import plans from Braintree"
  task :import_plans => :environment do
    Saasize::BraintreePlanFetcher.store_locally
  end
end