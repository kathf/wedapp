class RsvpsController < ApplicationController
  before_action :find_rsvp, only: [:update]


  def new
    @rsvp = Rsvp.new
    # @rsvp = Rsvp.create
    @guest = @rsvp.guests.build
    # @guest.save
  end


  def create
    @rsvp = Rsvp.create(rsvp_params)
    if @rsvp.persisted?
      respond_to do |format|
        format.html   { render 'guests/show', layout: false, locals: {rsvp: @rsvp, guest: @rsvp.guests[0]} }
        format.js     { @rsvp.id }
      end
    else
      render :new
    end
  end


  # def update
  #   @guest.update_attributes(rsvp_params[:guests_attributes]["0"])
  #   # @rsvp = Rsvp.create
  #   # @guest = Guest.create(rsvp_params[:guests_attributes]["0"])
  #   # @rsvp.guests << @guest
  #
  #   if @guest.persisted?
  #     respond_to do |format|
  #       format.html { render @guest, layout: false }
  #     end
  #   else
  #     render text: @guest.errors.full_messages.join(", "), status: 500
  #   end
  # end


  private
    # def find_guest
    #   @guest = Guest.find(params[:guest_id])
    # end

    def find_rsvp
      @rsvp = Rsvp.find(params[:id])
    end

    def rsvp_params
      params.require(:rsvp).permit(:guest_ids, guests_attributes: [:id, :name, :email])
    end
end
