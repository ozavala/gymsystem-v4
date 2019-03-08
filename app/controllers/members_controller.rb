class MembersController < ApplicationController
  def index
    @members = Member.all
    end

  def inactive_members
    @members = Member.inactive_members
    redirect_to members_path
  end

  def active_members
    @members = Member.active_members
    redirect_to members_path
  end

  def show
    # @inactive_members = Member.inactive_members
    # @active_members = Member.active_members
    @member = Member.find(params[:id])
  end


  def new
    @member = Member.new
    @gymsite = Gymsite.first
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:notice] = "Member succesfully created"
      redirect_to members_path
    else
      flash[:notice] = "Member was not created #{@member.errors.full_messages}"
      render 'new'
    end
  end

private

  def member_params
    params.require(:member).permit(:email, :password_digest, :gymsite_id, :first_name, :last_name, :street_address, :city, :state, :zip, :phone, :birthday, :is_active, :avatar, :notes, :from_date, :to_date, :level, :membership_type, :membership_price, :source)
  end
end
