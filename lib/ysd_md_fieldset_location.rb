require 'ysd-plugins' unless defined?Plugins::ModelAspect

#
# It represents Location information attached to a model
#
module FieldSet
  module Location
    include ::Plugins::ModelAspect

    def self.included(model)

        model.property :location_street, String, :field => 'location_street', :length => 60
        model.property :location_number, String, :field => 'location_number', :length => 10
        model.property :location_complement, String, :field => 'location_complement', :length => 20
        model.property :location_city, String, :field => 'location_city', :length => 60
        model.property :location_state, String, :field => 'location_state', :length => 60
        model.property :location_country, String, :field => 'location_country', :length => 50
        model.property :location_zip, String, :field => 'location_zip', :length => 10
     
    end

  end # Location
end #FieldSet
