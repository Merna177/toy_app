require 'test_helper'

class MicropostToysControllerTest < ActionController::TestCase
  setup do
    @micropost_toy = micropost_toys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropost_toys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost_toy" do
    assert_difference('MicropostToy.count') do
      post :create, micropost_toy: { content: @micropost_toy.content, user_id: @micropost_toy.user_id }
    end

    assert_redirected_to micropost_toy_path(assigns(:micropost_toy))
  end

  test "should show micropost_toy" do
    get :show, id: @micropost_toy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost_toy
    assert_response :success
  end

  test "should update micropost_toy" do
    patch :update, id: @micropost_toy, micropost_toy: { content: @micropost_toy.content, user_id: @micropost_toy.user_id }
    assert_redirected_to micropost_toy_path(assigns(:micropost_toy))
  end

  test "should destroy micropost_toy" do
    assert_difference('MicropostToy.count', -1) do
      delete :destroy, id: @micropost_toy
    end

    assert_redirected_to micropost_toys_path
  end
end
