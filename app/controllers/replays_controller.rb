class ReplaysController < ApplicationController
  uses_tiny_mce
  
  def index
    @replays = Replay.all
  end
  
  def show
    @replay = Replay.find(params[:id])
  end
  
  def new
    @replay = Replay.new
  end
  
  def create
    @replay = Replay.new(params[:replay])
    @replay.user = current_user
    if @replay.save
      flash[:notice] = "Successfully created replay."
      redirect_to @replay
    else
      render :action => 'new'
    end
  end
  
  def edit
    @replay = Replay.find(params[:id])
  end
  
  def update
    @replay = Replay.find(params[:id])
    if @replay.update_attributes(params[:replay])
      flash[:notice] = "Successfully updated replay."
      redirect_to @replay
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @replay = Replay.find(params[:id])
    @replay.destroy
    flash[:notice] = "Successfully destroyed replay."
    redirect_to replays_url
  end
end
