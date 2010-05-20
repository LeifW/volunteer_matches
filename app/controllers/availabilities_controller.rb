class AvailabilitiesController < ApplicationController
  active_scaffold :availability do |config|
    #config.columns.add :to_s 
  end
end
