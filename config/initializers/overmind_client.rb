if(defined?(Rails))
  module Overmind

    unless defined? HYDRA
      HYDRA = Typhoeus::Hydra.new
    end

    HOST = case Rails.env
      when "production"
       "padma-overmind.herokuapp.com"
      when "development"
       "localhost:3007"
      when "test"
       "localhost:3007"
    end
  end
end
