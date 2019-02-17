module Settings
  class GymsitesController < ApplicationController
    before_action :gymsite

    def edit
    end

    def update
      if @gymsite.update_attributes(permitted_params)
        redirect_to accounting_reports_path, flash: {
          success: 'Gym Site was succesfully updated'
        }
      else
        render :edit
      end
    end

  private

    def permitted_params
      params.require(:gymsite).permit(:name, :description, :legal_id, :logo, :street_address, :city, :state, :country, :zip, :email, :phone, :admin_id, :owner_id, :from_date, :to_date)
    end

    
  end
end
