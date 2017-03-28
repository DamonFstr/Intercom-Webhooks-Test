require 'test_helper'

class WebhookEventRequestsControllerTest < ActionController::TestCase
  setup do
    @webhook_event_request = webhook_event_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webhook_event_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webhook_event_request" do
    assert_difference('WebhookEventRequest.count') do
      post :create, webhook_event_request: { payload: @webhook_event_request.payload }
    end

    assert_redirected_to webhook_event_request_path(assigns(:webhook_event_request))
  end

  test "should show webhook_event_request" do
    get :show, id: @webhook_event_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webhook_event_request
    assert_response :success
  end

  test "should update webhook_event_request" do
    patch :update, id: @webhook_event_request, webhook_event_request: { payload: @webhook_event_request.payload }
    assert_redirected_to webhook_event_request_path(assigns(:webhook_event_request))
  end

  test "should destroy webhook_event_request" do
    assert_difference('WebhookEventRequest.count', -1) do
      delete :destroy, id: @webhook_event_request
    end

    assert_redirected_to webhook_event_requests_path
  end
end
