class PeopleController < ApplicationController
  active_scaffold :person do |config|
    config.label = "Customers"
    config.columns.add :id 
    #columns[:phone].label = "Phone #"
    #columns[:phone].description = "(Format: ###-###-####)"
  end
end
