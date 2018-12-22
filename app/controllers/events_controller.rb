class EventsController < ApplicationController
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = current_user.items.new
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  def create
    @event = Event.new(event_params)

      if @event.save
        redirect_to @event, notice: 'Event was successfully created.' 
      else
        render :new 
      end
  end

  # PATCH/PUT /events/1
  def update
    @event = Event.find(params[:id])
      if @event.update(event_params)
        redirect_to @event, notice: 'Event was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    @event = Event.find(params[:id])
      redirect_to events_url, notice: 'Event was successfully destroyed.' 
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:eventkey_id, :event, :description)
    end
end
