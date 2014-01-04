class Mailbox < ActiveRecord::Base

  attr_accessor :query


def  initialize name, profession
    @query = gets.chomp

def lookup (@query)

  @query= gets.chomp

  if @query.ip_address?(@query)
      geocoded_by :latitude, :longitude
      after_validation :geocode


else location_address = "#{address} #{city}, #{state} #{zip}"
      geocode_by :location_address
      after_validation :geocode

end


# #______________ original code from here own_________
#   serialize :collection_hours, JSON

#   ###missing params?

#   #acts_as_gmappable

#   private

#   def gmaps4rails_address
#     "#{address}, #{self.city}, #{self.state}, #{self.zip}"
#   end



#      #  safe_mailbox = params.require(:mailbox).permit(:address, :city, :state, :zip, :latitude, :longitude, :collection_day, :collection_time)
#      # @mailboxes.update safe_mailbox

#  # end

 end

