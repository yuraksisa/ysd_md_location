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
        model.property :location_longitude, Float, :field => 'location_longitude'
        model.property :location_latitude, Float, :field => 'location_latitude'
     
    end
    
    #
    # Get the full address
    #
    def location_full_address

      the_address = []
      the_address << location_street unless location_street.nil? or location_street.empty?
      the_address << location_number unless location_number.nil? or location_number.to_s.empty?
      the_address << location_complement unless location_complement.nil? or location_complement.empty?

      the_city = []
      the_city << location_city unless location_city.nil? or location_city.empty?
      the_city << location_state unless location_state.nil? or location_state.empty? or (location_state == location_city)
      the_city << location_country unless location_country.nil? or location_country.empty?
       
      full_address = "" 
      full_address << the_address.join(" ") unless the_address.empty?
      full_address << ", #{the_city.join(' ')}" unless the_city.empty?
      full_address << " #{location_zip}" unless location_zip.nil? or location_zip.to_s.empty?

      return full_address

    end

  end # Location
end #FieldSet
