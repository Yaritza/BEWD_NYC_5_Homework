class MailboxesController < ApplicationController

before_action :authenticate_user!, only: [:new, :create]
  def index
    @query = params['q']
    #@mailboxes = Mailbox.where('zip LIKE :query OR address LIKE :query', query: "%#{query}%")
    ##Not a real search !! narrow search by proximity, or by proximity and collection times!!
  end

      def search
      end

  def show
    @mailboxes =  Mailbox.find params[:id]
  end
end


