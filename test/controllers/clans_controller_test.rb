require 'test_helper'

class ClansControllerTest < ActionController::TestCase
  setup do
    @clan = clans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clan" do
    assert_difference('Clan.count') do
      post :create, clan: { name: @clan.name }
    end

    assert_redirected_to clan_path(assigns(:clan))
  end

  test "should show clan" do
    get :show, id: @clan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clan
    assert_response :success
  end

  test "should update clan" do
    patch :update, id: @clan, clan: { name: @clan.name }
    assert_redirected_to clan_path(assigns(:clan))
  end

  test "should destroy clan" do
    assert_difference('Clan.count', -1) do
      delete :destroy, id: @clan
    end

    assert_redirected_to clans_path
  end
end
