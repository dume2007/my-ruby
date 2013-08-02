require 'test_helper'

class GgNewsFilesControllerTest < ActionController::TestCase
  setup do
    @gg_news_file = gg_news_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gg_news_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gg_news_file" do
    assert_difference('GgNewsFile.count') do
      post :create, gg_news_file: { downpath: @gg_news_file.downpath, news_id: @gg_news_file.news_id }
    end

    assert_redirected_to gg_news_file_path(assigns(:gg_news_file))
  end

  test "should show gg_news_file" do
    get :show, id: @gg_news_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gg_news_file
    assert_response :success
  end

  test "should update gg_news_file" do
    patch :update, id: @gg_news_file, gg_news_file: { downpath: @gg_news_file.downpath, news_id: @gg_news_file.news_id }
    assert_redirected_to gg_news_file_path(assigns(:gg_news_file))
  end

  test "should destroy gg_news_file" do
    assert_difference('GgNewsFile.count', -1) do
      delete :destroy, id: @gg_news_file
    end

    assert_redirected_to gg_news_files_path
  end
end
