module Overmind
  # MonthlyStat represents statistiv for a *month*
  # :ref_date is last day of such month.
  class MonthlyStat < LogicalModel
    self.hydra = HYDRA
    self.use_ssl = (ENV['RACK_ENV'] == "production")
    self.resource_path = "/api/v0/monthly_stats"
    self.attribute_keys = [
        :id,
        :name,
        :ref_date,
        :account_name,
        :value,
        :service
    ]
    self.use_api_key = true
    self.api_key_name = "api_key"
    self.api_key = API_KEY
    self.host  = HOST

    def json_root
      'monthly_stat'
    end

  end
end