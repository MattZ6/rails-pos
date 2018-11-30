require 'test_helper'

class PucharsesControllerTest < ActionController::TestCase
  setup do
    @pucharse = pucharses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pucharses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pucharse" do
    assert_difference('Pucharse.count') do
      post :create, pucharse: { description: @pucharse.description, profile_id: @pucharse.profile_id, was_bought: @pucharse.was_bought }
    end

    assert_redirected_to pucharse_path(assigns(:pucharse))
  end

  test "should show pucharse" do
    get :show, id: @pucharse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pucharse
    assert_response :success
  end

  test "should update pucharse" do
    patch :update, id: @pucharse, pucharse: { description: @pucharse.description, profile_id: @pucharse.profile_id, was_bought: @pucharse.was_bought }
    assert_redirected_to pucharse_path(assigns(:pucharse))
  end

  test "should destroy pucharse" do
    assert_difference('Pucharse.count', -1) do
      delete :destroy, id: @pucharse
    end

    assert_redirected_to pucharses_path
  end
end
