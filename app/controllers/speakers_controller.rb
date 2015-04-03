class SpeakersController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def index
    @speakers = Speaker.all
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  def edit
    @speaker = Speaker.find(params[:id])
  end

  def update
    @speaker = Speaker.find(params[:id])
    if @speaker.update_attributes(params[:article])
      redirect_to @speaker, notice: 'Speaker profile has been updated.'
    else
      render 'edit'
    end
  end
end
