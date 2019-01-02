class Customer < ApplicationRecord
  # [prelimenary to the mask validates] :cus_phone, numericality: true, length: { minimum: 10, maximum: 10 }
  # before validating phone format, remove the symbols placed in it
  before_validation :phone_format

  #require the presence of something in these fields
  validates_presence_of :cus_f_name, :cus_l_name, :cus_p_phone

  #basic zip validation
  validates :cus_zip, numericality: true, allow_blank: true, length: {minimum: 5, maximum: 5}

  #before running save on the customer_controller, run this :concat_address
  # before_save :concat_address

  #these are variables from the form that have no DB association
  attr_accessor :number, :route, :lat, :long, :cus_ctry

  #after validating data - run :geocoder
  validates_presence_of :cus_address






  def address
    :concat_address
    [cus_address, cus_city, cus_state, cus_ctry].compact.join(',')
  end

  #this script should put the street number and name together to upload
  # to :cus_address
  def concat_address
    self.cus_address = "#{self.number} #{self.route}"
  end


  #removes the added formatting from the mask
  def phone_format
    self.cus_p_phone = self.cus_p_phone.gsub(/\D/, '')
    self.cus_a_phone = self.cus_a_phone.gsub(/\D/, '')
  end

  def set_coords
    # results = Geocoder.search(:address)

    self.lat = 'none'
    self.long = 'nonealso'
  end
end