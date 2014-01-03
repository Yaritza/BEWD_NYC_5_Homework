class Mailbox < ActiveRecord::Base

  ###missing params?

    acts_as_gmappable

  private

  def gmaps4rails_address
    "#{address}, #{self.city}, #{self.state}, #{self.zip}"
  end



     #  safe_mailbox = params.require(:mailbox).permit(:address, :city, :state, :zip, :latitude, :longitude, :collection_day, :collection_time)
     # @mailboxes.update safe_mailbox

 # end

end

