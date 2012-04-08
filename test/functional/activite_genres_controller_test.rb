require 'test_helper'

class ActiviteGenresControllerTest < ActionController::TestCase
  setup do
    @activite_genre = activite_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activite_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activite_genre" do
    assert_difference('ActiviteGenre.count') do
      post :create, activite_genre: { name: @activite_genre.name }
    end

    assert_redirected_to activite_genre_path(assigns(:activite_genre))
  end

  test "should show activite_genre" do
    get :show, id: @activite_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activite_genre
    assert_response :success
  end

  test "should update activite_genre" do
    put :update, id: @activite_genre, activite_genre: { name: @activite_genre.name }
    assert_redirected_to activite_genre_path(assigns(:activite_genre))
  end

  test "should destroy activite_genre" do
    assert_difference('ActiviteGenre.count', -1) do
      delete :destroy, id: @activite_genre
    end

    assert_redirected_to activite_genres_path
  end
end
