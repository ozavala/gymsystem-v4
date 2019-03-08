  class GlAccountsController < ApplicationController
    # before_action :sanitize_params

    def new
      @gl_account = GlAccount.new

    end

    def show
      @gl_account = GlAccount.find(params[:id])
    end

    def edit
      @gl_account = GlAccount.find(params[:id])
    end

    def update

      if @gl_account.update_attributes(gl_account_params)
        redirect_to accounting_reports_path, flash: {
          success: 'Account  was succesfully updated'
        }
      else
        render :edit
      end
    end

    def create

      # sanitize_params
      @gl_account = GlAccount.new(permitted_params)
      respond_to do |format|
        byebug
        if @gl_account.save
          format.html { redirect_to accounting_reports_index_path, notice: 'Gl Account was successfully created.' }
          format.json { render :show, status: :created, location: @gl_account }
        else
          format.html { render :new }
          format.json { render json: @gl_account.errors, status: :unprocessable_entity }
        end
      end
    end

  private

    def permitted_params
      params.require(:gl_account).permit(:acc_code, :acc_parent_code, :name, :description, :account_type_id)
    end

    # def sanitize_params
    #   gl_account_params[:account_type_id] = gl_account_params[:account_type_id].to_i
    # end
  end
