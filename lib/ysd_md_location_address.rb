require 'data_mapper' unless defined?DataMapper

module LocationDataSystem

  # ------------------------------------
  # Represents a generic address 
  # ------------------------------------
  class Address
     include DataMapper::Resource
     
     storage_names[:default] = 'locds_address' # stored in bookings table in default storage
     
     property :id, Serial, :field => 'id'
     
     property :street, String, :field => 'street', :length => 60
     property :number, String, :field => 'number', :length => 10
     property :complement, String, :field => 'complement', :length => 20
     property :city, String, :field => 'city', :length => 60
     property :state, String, :field => 'state', :length => 60
     property :country, String, :field => 'country', :length => 50
     property :zip, String, :field => 'zip', :length => 10
  
  end

end