require 'test_helper'

class CarpoolingrequestsControllerTest < ActionController::TestCase
  setup do
    @carpoolingrequest = carpoolingrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carpoolingrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carpoolingrequest" do
    assert_difference('Carpoolingrequest.count') do
      post :create, carpoolingrequest: { email: @carpoolingrequest.email, password: @carpoolingrequest.password, prefer_from: @carpoolingrequest.prefer_from, prefer_to: @carpoolingrequest.prefer_to, travel_id: @carpoolingrequest.travel_id, user_id: @carpoolingrequest.user_id }
    end

    assert_redirected_to carpoolingrequest_path(assigns(:carpoolingrequest))
  end

  test "should show carpoolingrequest" do
    get :show, id: @carpoolingrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carpoolingrequest
    assert_response :success
  end

  test "should update carpoolingrequest" do
    patch :update, id: @carpoolingrequest, carpoolingrequest: { email: @carpoolingrequest.email, password: @carpoolingrequest.password, prefer_from: @carpoolingrequest.prefer_from, prefer_to: @carpoolingrequest.prefer_to, travel_id: @carpoolingrequest.travel_id, user_id: @carpoolingrequest.user_id }
    assert_redirected_to carpoolingrequest_path(assigns(:carpoolingrequest))
  end

  test "should destroy carpoolingrequest" do
    assert_difference('Carpoolingrequest.count', -1) do
      delete :destroy, id: @carpoolingrequest
    end

    assert_redirected_to carpoolingrequests_path
  end
end
