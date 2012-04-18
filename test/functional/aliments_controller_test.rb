require 'test_helper'

class AlimentsControllerTest < ActionController::TestCase
  setup do
    @aliment = aliments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aliments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aliment" do
    assert_difference('Aliment.count') do
      post :create, aliment: { calories: @aliment.calories, name: @aliment.name, repa_id: @aliment.repa_id }
    end

    assert_redirected_to aliment_path(assigns(:aliment))
  end

  test "should show aliment" do
    get :show, id: @aliment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aliment
    assert_response :success
  end

  test "should update aliment" do
    put :update, id: @aliment, aliment: { calories: @aliment.calories, name: @aliment.name, repa_id: @aliment.repa_id }
    assert_redirected_to aliment_path(assigns(:aliment))
  end

  test "should destroy aliment" do
    assert_difference('Aliment.count', -1) do
      delete :destroy, id: @aliment
    end

    assert_redirected_to aliments_path
  end
end
