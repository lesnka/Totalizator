require 'spec_helper'

describe Wallet do
  before(:each) do
    Wallet.delete_all
    @wallet = create :wallet
  end

  it 'set balance method test' do
    @wallet = create :wallet
    @wallet.instance_eval{set_balance}
    @wallet.balance.should == 10000
  end
end