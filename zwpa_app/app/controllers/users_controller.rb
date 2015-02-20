class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :Customer, :user_id, :company_name, :Request, :customer_id, :contact_firstname, :contact_lastname, :title, :email, :phone, :street_address, :city, :state, :date, :Note, :request_id, :photo, :description, :Walkthrough, :request_id, :square_footage, :num_floors, :max_occupancy, :other_businesses, :other_businesses_type, :ownership, :waste_disposal_contract, :waste_management_cost, :loading_dock, :freight_elevators, :storage_space, :storage_space_details, :trash_hauler, :trash_hauler_contract, :contract_available, :annual_record, :waste_storage, :waste_containers, :buy_recycled, :buy_recycled_details, :green_cleaning_products, :green_cleaning_details, :mandated_recycling, :recycling_program, :recycling_details, :recycling_stream, :recycling_stream_details, :discontinued_recycling, :current_compost, :past_compost, :generate_toner_ink, :recycle_toner_ink, :generate_CFLs, :recycle_CFLs, :generate_batteries, :recycle_batteries, :generate_computers, :recycle_computers, :generate_cellphones, :recycle_cellphones, :generate_tvs, :recycle_tvs, :generate_other_corded_equipment, :recycle_cellphones, :generate_furniture, :recycle_furniture, :generate_linens_uniforms, :recycle_linens_uniforms, :generate_construction_debris, :recycle_construction_debris, :generate_pallets, :recycle_pallets, :ZW_policy, :LEED, :recertify_LEED, :requesting_audit_services, :Audit, :request_id, :date, :origin, :time_period, :dumpster_type, :Waste, :audit_id, :note, :weight, :material_type)
    end
end
