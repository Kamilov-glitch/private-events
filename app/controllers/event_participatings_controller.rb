class EventParticipatingsController < ApplicationController

    def new
      @event_participating = EventParticipating.new
    end

    def edit

    end

    def create
      @event_participating = current_user.event_participatings.build(event_participatings_params)
  
      respond_to do |format|
        if @event_participating.save
          format.html { redirect_to @event, notice: "You successfully joined an event!" }
          format.json { render :show, status: :created, location: @event }
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