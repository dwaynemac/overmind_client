# Configuration for LogicalModel on /config/initializers/logical_model.rb
module Overmind
  class Merge < LogicalModel

    self.hydra = HYDRA
    self.use_ssl = (ENV['RACK_ENV'] == "production")
    self.resource_path = "/v0/merges"
    self.attribute_keys = [:parent_id, :son_id]
    self.use_api_key = true
    self.api_key_name = "app_key"
    self.api_key = API_KEY
    self.host  = HOST

    def json_root
      'merge'
    end

  end
end
