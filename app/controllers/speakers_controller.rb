class SpeakersController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def index
    @speakers = Speaker.all
  end

  def new
    @speaker = Speaker.new
  end

def create
    @speaker = Speaker.new
    if @speaker.save
      redirect_to root_url, notice: 'Thank you for adding your speaker profile!'
    else
      render 'new'
    end
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
private
  def speaker_params
    params.require(:speaker).permit(:name, :headline, :description)
  end

end
