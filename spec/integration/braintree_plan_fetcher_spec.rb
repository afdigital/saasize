require "rails_helper"
require "saasize/braintree_plan_fetcher"

describe Saasize::BraintreePlanFetcher do
  let(:faux_plan) do
    double("Plan", 
             :id    => "faux1",
             :name  => "Starter",
             :price => "9.95")
  end

  it "fetches and stores plans" do
    expect(Braintree::Plan).to receive(:all).and_return([faux_plan])
    expect(Saasize::Plan).to receive(:create).with({
      :braintree_id => "faux1",
      :name         => "Starter",
      :price        => "9.95"
    })

    Saasize::BraintreePlanFetcher.store_locally
  end

  it "checks and updates plans" do
    expect(Braintree::Plan).to receive(:all).and_return([faux_plan])
    expect(Saasize::Plan).to receive(:find_by).
                                with(braintree_id: faux_plan.id).
                                and_return(plan = double)
    expect(plan).to receive(:update_attributes).with({
      :name => "Starter",
      :price => "9.95"
    })

    expect(Saasize::Plan).to_not receive(:create)

    Saasize::BraintreePlanFetcher.store_locally
  end
end