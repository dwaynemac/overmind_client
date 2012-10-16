require 'spec_helper'

module Overmind
  describe MonthlyStat do
    its(:resource_uri){ should == "http://localhost:3007/api/v0/monthly_specs" }
  end
end