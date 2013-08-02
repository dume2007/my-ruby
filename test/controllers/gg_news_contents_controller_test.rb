require 'test_helper'

class GgNewsContentsControllerTest < ActionController::TestCase
  setup do
    @gg_news_content = gg_news_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gg_news_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gg_news_content" do
    assert_difference('GgNewsContent.count') do
      post :create, gg_news_content: { content: @gg_news_content.content, extra: @gg_news_content.extra, news_id: @gg_news_content.news_id }
    end

    assert_redirected_to gg_news_content_path(assigns(:gg_news_content))
  end

  test "should show gg_news_content" do
    get :show, id: @gg_news_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gg_news_content
    assert_response :success
  end

  test "should update gg_news_content" do
    patch :update, id: @gg_news_content, gg_news_content: { content: @gg_news_content.content, extra: @gg_news_content.extra, news_id: @gg_news_content.news_id }
    assert_redirected_to gg_news_content_path(assigns(:gg_news_content))
  end

  test "should destroy gg_news_content" do
    assert_difference('GgNewsContent.count', -1) do
      delete :destroy, id: @gg_news_content
    end

    assert_redirected_to gg_news_contents_path
  end
end
