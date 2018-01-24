class BiosController < ApplicationController
  def index
    @bio = current_user.bio
  end

  def edit
    @bio = current_user.bio
  end

  
end
