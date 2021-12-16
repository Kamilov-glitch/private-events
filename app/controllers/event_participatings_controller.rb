class EventParticipatingsController < ApplicationController

    def new
      @event_participating = EventParticipating.new
    end

    def edit

    end

    def create
      # @event = Event.find(params[:event_id])
      @event_participating = current_user.event_participatings.build(event_participatings_params)
  
      respond_to do |format|
        if @event_participating.save
          format.html { redirect_to root_path, notice: "You successfully joined an event!" } #event < root_path
          format.json { render :show, status: :created, location: root_path } #@event
        else
          flash.now[:warning] = 'There were problems when trying to create a new event registration'

          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def event_participatings_params
      params.require(:event_participating).permit(:user_id, :event_id)
    end

end