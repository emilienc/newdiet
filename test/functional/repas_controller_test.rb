require 'test_helper'

class RepasControllerTest < ActionController::TestCase
  setup do
    @repa = repas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repa" do
    assert_difference('Repa.count') do
      post :create, repa: { name: @repa.name, when: @repa.when }
    end

    assert_redirected_to repa_path(assigns(:repa))
  end

  test "should show repa" do
    get :show, id: @repa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repa
    assert_response :success
  end

  test "should update repa" do
    put :update, id: @repa, repa: { name: @repa.name, when: @repa.when }
    assert_redirected_to repa_path(assigns(:repa))
  end

  test "should destroy repa" do
    assert_difference('Repa.count', -1) do
      delete :destroy, id: @repa
    end

    assert_redirected_to repas_path
  end
end
