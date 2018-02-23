class BiosController < ApplicationController
  def index
    @bio = current_user.bio
  end

  def show
    @bio = Bio.find(params[:id])
  end

  def edit
    @bio = current_user.bio
    render layout: "first-login"
  end

  def update
    @bio = current_user.bio

    respond_to do |format|
      if @bio.update_attributes(bio_params)
        format.html { redirect_to(@bio, :notice => 'Bio was successfully updated.') }
        format.json { respond_with_bip(@bio) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@bio) }
      end
    end
  end

  private

    def bio_params
      params.require(:bio).permit(:title, :lastwords, :name, :last_name, :place_born, :place_current, :values)
    end
end
