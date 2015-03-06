require 'test_helper'

class ProdutTypesControllerTest < ActionController::TestCase
  setup do
    @produt_type = produt_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produt_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produt_type" do
    assert_difference('ProdutType.count') do
      post :create, produt_type: { name: @produt_type.name }
    end

    assert_redirected_to produt_type_path(assigns(:produt_type))
  end

  test "should show produt_type" do
    get :show, id: @produt_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produt_type
    assert_response :success
  end

  test "should update produt_type" do
    patch :update, id: @produt_type, produt_type: { name: @produt_type.name }
    assert_redirected_to produt_type_path(assigns(:produt_type))
  end

  test "should destroy produt_type" do
    assert_difference('ProdutType.count', -1) do
      delete :destroy, id: @produt_type
    end

    assert_redirected_to produt_types_path
  end
end
