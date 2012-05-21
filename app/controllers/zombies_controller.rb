class ZombiesController < ApplicationController
  def create
    @zombie = Zombie.new(params[:zombie])
        if @zombie.save
          redirect_to @zombie, :notice => "Successfully created zombie."
        else
          render :action => 'new'
        end
  end

 def show
 end
  def index
    @zombies = Zombie.all
  end

  def new
    @zombie = Zombie.new
  end
  
end
