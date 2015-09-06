require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { contact_number: @order.contact_number, email: @order.email, name: @order.name, number_of_guest: @order.number_of_guest, res_date: @order.res_date, res_time: @order.res_time, special_request: @order.special_request }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { contact_number: @order.contact_number, email: @order.email, name: @order.name, number_of_guest: @order.number_of_guest, res_date: @order.res_date, res_time: @order.res_time, special_request: @order.special_request }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
