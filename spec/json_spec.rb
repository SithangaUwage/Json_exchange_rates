require_relative 'spec_helper'

describe 'working through the exchange rates' do

  before(:each) do
    @currency = ParseJSON.new("json_exchange_rates.json")
  end

  it 'the Base should equal to EUR' do
    expect(@currency.get_base_value).to eq("EUR")
  end

  it 'the Date should be 2017-07-26' do
    expect(@currency.get_date_value).to eq("2017-07-26")
  end

  it 'the Total number of currencies should be 31' do
    expect(@currency.get_rates_keys).to eq(31)
  end

  it 'the AUD currency should be 1.4717 on the Date of 2017-07-26' do
    expect(@currency.get_date_value).to eq("2017-07-26")
    expect(@currency.get_AUD_currency).to eq(1.4717)
  end

  it 'the ZAR currency should be 15.2 on the Date of 2017-07-26' do
    expect(@currency.get_date_value).to eq("2017-07-26")
    expect(@currency.get_ZAR_currency).to eq(15.2)
  end

  it 'the IDR currency should be between 10000.00 and 20000.00' do
    expect(@currency.get_IRD_currency).to be_between(10000.00,20000.00)
  end

  it 'the Rates should be all floats' do
    expect(@currency.get_rates_values).to all(be_a(Float))
  end

  it 'the Rates should be a hash' do
    expect(@currency.get_rates).to be_a(Hash)
  end

end
