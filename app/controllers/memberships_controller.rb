class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @user = current_user
    @memberships = @user.memberships
  end

  def show
  end

  def new
    @membership = Membership.new
  end

  def edit
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user_id = current_user.id if current_user

    respond_to do |format|
      if @membership.save
        format.html { redirect_to memberships_path, notice: "Successfully placed Membership" }
        format.json { render :show, status: :ok, location: @membership }
      else
        format.html { render :edit }
        format.json { render json: @membership.errors, status: unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @membership.update(membership_params)
        format.html { redirect_to @membership, notice: "Successfully updated Membership" }
        format.json { render :show, status: :ok, location: @membership }
      else
        format.html { render :edit }
        format.json { render json: @membership.errors, status: unprocessable_entity }
      end
    end
  end

  def destroy
    @membership.destroy
    respond_to do |format|
      format.html { redirect_to memberships_path, notice: "Membership successfully destoryed" }
      format.json { head :no_content }
    end
  end

  private

    def set_membership
      @membership = Membership.find(params[:id])
    end

    def membership_params
      params.require(:membership).permit(:user_id, :group_id)
    end

end