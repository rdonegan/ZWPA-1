require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { Audit: @user.Audit, Customer: @user.Customer, LEED: @user.LEED, Note: @user.Note, Request: @user.Request, Walkthrough: @user.Walkthrough, Waste: @user.Waste, ZW_policy: @user.ZW_policy, annual_record: @user.annual_record, audit_id: @user.audit_id, buy_recycled: @user.buy_recycled, buy_recycled_details: @user.buy_recycled_details, city: @user.city, company_name: @user.company_name, contact_firstname: @user.contact_firstname, contact_lastname: @user.contact_lastname, contract_available: @user.contract_available, current_compost: @user.current_compost, customer_id: @user.customer_id, date: @user.date, date: @user.date, description: @user.description, discontinued_recycling: @user.discontinued_recycling, dumpster_type: @user.dumpster_type, email: @user.email, freight_elevators: @user.freight_elevators, generate_CFLs: @user.generate_CFLs, generate_batteries: @user.generate_batteries, generate_cellphones: @user.generate_cellphones, generate_computers: @user.generate_computers, generate_construction_debris: @user.generate_construction_debris, generate_furniture: @user.generate_furniture, generate_linens_uniforms: @user.generate_linens_uniforms, generate_other_corded_equipment: @user.generate_other_corded_equipment, generate_pallets: @user.generate_pallets, generate_toner_ink: @user.generate_toner_ink, generate_tvs: @user.generate_tvs, green_cleaning_details: @user.green_cleaning_details, green_cleaning_products: @user.green_cleaning_products, loading_dock: @user.loading_dock, mandated_recycling: @user.mandated_recycling, material_type: @user.material_type, max_occupancy: @user.max_occupancy, note: @user.note, num_floors: @user.num_floors, origin: @user.origin, other_businesses: @user.other_businesses, other_businesses_type: @user.other_businesses_type, ownership: @user.ownership, password: @user.password, past_compost: @user.past_compost, phone: @user.phone, photo: @user.photo, recertify_LEED: @user.recertify_LEED, recycle_CFLs: @user.recycle_CFLs, recycle_batteries: @user.recycle_batteries, recycle_cellphones: @user.recycle_cellphones, recycle_cellphones: @user.recycle_cellphones, recycle_computers: @user.recycle_computers, recycle_construction_debris: @user.recycle_construction_debris, recycle_furniture: @user.recycle_furniture, recycle_linens_uniforms: @user.recycle_linens_uniforms, recycle_pallets: @user.recycle_pallets, recycle_toner_ink: @user.recycle_toner_ink, recycle_tvs: @user.recycle_tvs, recycling_details: @user.recycling_details, recycling_program: @user.recycling_program, recycling_stream: @user.recycling_stream, recycling_stream_details: @user.recycling_stream_details, request_id: @user.request_id, request_id: @user.request_id, request_id: @user.request_id, requesting_audit_services: @user.requesting_audit_services, square_footage: @user.square_footage, state: @user.state, storage_space: @user.storage_space, storage_space_details: @user.storage_space_details, street_address: @user.street_address, time_period: @user.time_period, title: @user.title, trash_hauler: @user.trash_hauler, trash_hauler_contract: @user.trash_hauler_contract, user_id: @user.user_id, username: @user.username, waste_containers: @user.waste_containers, waste_disposal_contract: @user.waste_disposal_contract, waste_management_cost: @user.waste_management_cost, waste_storage: @user.waste_storage, weight: @user.weight }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { Audit: @user.Audit, Customer: @user.Customer, LEED: @user.LEED, Note: @user.Note, Request: @user.Request, Walkthrough: @user.Walkthrough, Waste: @user.Waste, ZW_policy: @user.ZW_policy, annual_record: @user.annual_record, audit_id: @user.audit_id, buy_recycled: @user.buy_recycled, buy_recycled_details: @user.buy_recycled_details, city: @user.city, company_name: @user.company_name, contact_firstname: @user.contact_firstname, contact_lastname: @user.contact_lastname, contract_available: @user.contract_available, current_compost: @user.current_compost, customer_id: @user.customer_id, date: @user.date, date: @user.date, description: @user.description, discontinued_recycling: @user.discontinued_recycling, dumpster_type: @user.dumpster_type, email: @user.email, freight_elevators: @user.freight_elevators, generate_CFLs: @user.generate_CFLs, generate_batteries: @user.generate_batteries, generate_cellphones: @user.generate_cellphones, generate_computers: @user.generate_computers, generate_construction_debris: @user.generate_construction_debris, generate_furniture: @user.generate_furniture, generate_linens_uniforms: @user.generate_linens_uniforms, generate_other_corded_equipment: @user.generate_other_corded_equipment, generate_pallets: @user.generate_pallets, generate_toner_ink: @user.generate_toner_ink, generate_tvs: @user.generate_tvs, green_cleaning_details: @user.green_cleaning_details, green_cleaning_products: @user.green_cleaning_products, loading_dock: @user.loading_dock, mandated_recycling: @user.mandated_recycling, material_type: @user.material_type, max_occupancy: @user.max_occupancy, note: @user.note, num_floors: @user.num_floors, origin: @user.origin, other_businesses: @user.other_businesses, other_businesses_type: @user.other_businesses_type, ownership: @user.ownership, password: @user.password, past_compost: @user.past_compost, phone: @user.phone, photo: @user.photo, recertify_LEED: @user.recertify_LEED, recycle_CFLs: @user.recycle_CFLs, recycle_batteries: @user.recycle_batteries, recycle_cellphones: @user.recycle_cellphones, recycle_cellphones: @user.recycle_cellphones, recycle_computers: @user.recycle_computers, recycle_construction_debris: @user.recycle_construction_debris, recycle_furniture: @user.recycle_furniture, recycle_linens_uniforms: @user.recycle_linens_uniforms, recycle_pallets: @user.recycle_pallets, recycle_toner_ink: @user.recycle_toner_ink, recycle_tvs: @user.recycle_tvs, recycling_details: @user.recycling_details, recycling_program: @user.recycling_program, recycling_stream: @user.recycling_stream, recycling_stream_details: @user.recycling_stream_details, request_id: @user.request_id, request_id: @user.request_id, request_id: @user.request_id, requesting_audit_services: @user.requesting_audit_services, square_footage: @user.square_footage, state: @user.state, storage_space: @user.storage_space, storage_space_details: @user.storage_space_details, street_address: @user.street_address, time_period: @user.time_period, title: @user.title, trash_hauler: @user.trash_hauler, trash_hauler_contract: @user.trash_hauler_contract, user_id: @user.user_id, username: @user.username, waste_containers: @user.waste_containers, waste_disposal_contract: @user.waste_disposal_contract, waste_management_cost: @user.waste_management_cost, waste_storage: @user.waste_storage, weight: @user.weight }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
