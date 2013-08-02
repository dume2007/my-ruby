require 'test_helper'

class GgClasslistsControllerTest < ActionController::TestCase
  setup do
    @gg_classlist = gg_classlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gg_classlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gg_classlist" do
    assert_difference('GgClasslist.count') do
      post :create, gg_classlist: { classname: @gg_classlist.classname }
    end

    assert_redirected_to gg_classlist_path(assigns(:gg_classlist))
  end

  test "should show gg_classlist" do
    get :show, id: @gg_classlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gg_classlist
    assert_response :success
  end

  test "should update gg_classlist" do
    patch :update, id: @gg_classlist, gg_classlist: { classname: @gg_classlist.classname }
    assert_redirected_to gg_classlist_path(assigns(:gg_classlist))
  end

  test "should destroy gg_classlist" do
    assert_difference('GgClasslist.count', -1) do
      delete :destroy, id: @gg_classlist
    end

    assert_redirected_to gg_classlists_path
  end
end
