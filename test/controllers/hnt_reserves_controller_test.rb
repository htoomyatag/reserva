require 'test_helper'

class HntReservesControllerTest < ActionController::TestCase
  setup do
    @hnt_reserf = hnt_reserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hnt_reserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hnt_reserf" do
    assert_difference('HntReserve.count') do
      post :create, hnt_reserf: { customer_name: @hnt_reserf.customer_name, number_of_ppl: @hnt_reserf.number_of_ppl, phone: @hnt_reserf.phone, reserve_date: @hnt_reserf.reserve_date, reserve_time: @hnt_reserf.reserve_time, restaurant_name: @hnt_reserf.restaurant_name }
    end

    assert_redirected_to hnt_reserf_path(assigns(:hnt_reserf))
  end

  test "should show hnt_reserf" do
    get :show, id: @hnt_reserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hnt_reserf
    assert_response :success
  end

  test "should update hnt_reserf" do
    patch :update, id: @hnt_reserf, hnt_reserf: { customer_name: @hnt_reserf.customer_name, number_of_ppl: @hnt_reserf.number_of_ppl, phone: @hnt_reserf.phone, reserve_date: @hnt_reserf.reserve_date, reserve_time: @hnt_reserf.reserve_time, restaurant_name: @hnt_reserf.restaurant_name }
    assert_redirected_to hnt_reserf_path(assigns(:hnt_reserf))
  end

  test "should destroy hnt_reserf" do
    assert_difference('HntReserve.count', -1) do
      delete :destroy, id: @hnt_reserf
    end

    assert_redirected_to hnt_reserves_path
  end
end
