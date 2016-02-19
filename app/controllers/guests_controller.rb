class GuestsController < ApplicationController
  before_action :find_guest, only: [:update, :destroy]
  before_action :find_rsvp, only: [:new, :create]


  def new
    @guest = @rsvp.guests.build
    # @guest.save
    respond_to do |format|
      format.html { render :new, layout: false }
    end
  end


  # def create
  #   @guest = Guest.create(guest_params)
  #   @rsvp << @guest
  #   if @guest.persisted?
  #     respond_to do |format|
  #       format.html { render :show, layout: false }
  #     end
  #   else
  #     render text: @guest.errors.full_messages.join(", "), status: 500
  #   end
  # end
  # #
  # #
  # # def update
  # #   @guest.update_attributes(guest_params)
  # # end
  #
  #
  # def destroy
  #   @guest.destroy
  #   # render nothing: true
  #   respond_to.js { render nothing: true }
  #   # end
  # end


  private
    def guest_params
      params.require(:guest).permit(:name, :email, :rsvp_id)
    end

    def find_guest
      @guest = Guest.find(params[:id])
    end

    def find_rsvp
      @rsvp = Rsvp.find(params[:rsvp_id])
    end
end
