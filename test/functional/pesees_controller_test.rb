require 'test_helper'

class PeseesControllerTest < ActionController::TestCase
  setup do
    @pesee = pesees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesee" do
    assert_difference('Pesee.count') do
      post :create, pesee: { date: @pesee.date, poids: @pesee.poids }
    end

    assert_redirected_to pesee_path(assigns(:pesee))
  end

  test "should show pesee" do
    get :show, id: @pesee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesee
    assert_response :success
  end

  test "should update pesee" do
    put :update, id: @pesee, pesee: { date: @pesee.date, poids: @pesee.poids }
    assert_redirected_to pesee_path(assigns(:pesee))
  end

  test "should destroy pesee" do
    assert_difference('Pesee.count', -1) do
      delete :destroy, id: @pesee
    end

    assert_redirected_to pesees_path
  end
end
