class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    ActiveRecord::Base.transaction do
      Event.create!(event_params)

      event_participant = current_user.event_participants.create!(event_id: event.id, joined_at: Time.current)

      event_participant.event_participant_transitions.create!(status: :registered)
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :status, :category, :event_started_at, :event_ended_at, :recruit_started_at, :recruit_ended_at, :timezone)
  end
end
