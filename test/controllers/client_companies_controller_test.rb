require 'test_helper'

class ClientCompaniesControllerTest < ActionController::TestCase
  setup do
    @client_company = client_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_company" do
    assert_difference('ClientCompany.count') do
      post :create, client_company: { address: @client_company.address, email: @client_company.email, fax: @client_company.fax, name: @client_company.name, phone: @client_company.phone, website: @client_company.website }
    end

    assert_redirected_to client_company_path(assigns(:client_company))
  end

  test "should show client_company" do
    get :show, id: @client_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_company
    assert_response :success
  end

  test "should update client_company" do
    patch :update, id: @client_company, client_company: { address: @client_company.address, email: @client_company.email, fax: @client_company.fax, name: @client_company.name, phone: @client_company.phone, website: @client_company.website }
    assert_redirected_to client_company_path(assigns(:client_company))
  end

  test "should destroy client_company" do
    assert_difference('ClientCompany.count', -1) do
      delete :destroy, id: @client_company
    end

    assert_redirected_to client_companies_path
  end
end
