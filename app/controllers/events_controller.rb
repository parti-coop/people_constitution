class EventsController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_ID'], password: ENV['ADMIN_PW'], except: [:index, :show]

  def index
    @events = Event.order("opened_at DESC")
  end

  def show
    @events = Event.order("id DESC")
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save()
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
    @event = event.find(params[:id])
    @event.destroy
    redirect_to @events
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :opened_on)
  end
end