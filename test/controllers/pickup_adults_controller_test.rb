require 'test_helper'

class PickupAdultsControllerTest < ActionController::TestCase
  setup do
    @pickup_adult = pickup_adults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickup_adults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup_adult" do
    assert_difference('PickupAdult.count') do
      post :create, pickup_adult: { description: @pickup_adult.description, name: @pickup_adult.name, picture: @pickup_adult.picture }
    end

    assert_redirected_to pickup_adult_path(assigns(:pickup_adult))
  end

  test "should show pickup_adult" do
    get :show, id: @pickup_adult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickup_adult
    assert_response :success
  end

  test "should update pickup_adult" do
    patch :update, id: @pickup_adult, pickup_adult: { description: @pickup_adult.description, name: @pickup_adult.name, picture: @pickup_adult.picture }
    assert_redirected_to pickup_adult_path(assigns(:pickup_adult))
  end

  test "should destroy pickup_adult" do
    assert_difference('PickupAdult.count', -1) do
      delete :destroy, id: @pickup_adult
    end

    assert_redirected_to pickup_adults_path
  end
end
