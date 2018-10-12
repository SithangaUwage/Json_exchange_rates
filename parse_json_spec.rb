require "json"

class ParseJSON
  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file["base"]
  end

  def get_date_value
    @json_file["date"]
  end

  def get_AUD_currency
    @json_file["rates"]["AUD"]
  end

  def get_ZAR_currency
    @json_file["rates"]["ZAR"]
  end

  def get_IRD_currency
    @json_file["rates"]["IDR"]
  end

  def get_rates
    @json_file["rates"]
  end

  def get_rates_keys
    @json_file["rates"].keys.length
  end

  def get_rates_values
    @json_file["rates"].values
  end

end

run = ParseJSON.new("json_exchange_rates.json")

# p run.get_AUD_currency
