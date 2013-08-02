require 'test_helper'

class GgNewsControllerTest < ActionController::TestCase
  setup do
    @gg_news = gg_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gg_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gg_news" do
    assert_difference('GgNews.count') do
      post :create, gg_news: { author: @gg_news.author, classid: @gg_news.classid, fileimg: @gg_news.fileimg, filesize: @gg_news.filesize, imgurl: @gg_news.imgurl, onclick: @gg_news.onclick, title: @gg_news.title }
    end

    assert_redirected_to gg_news_path(assigns(:gg_news))
  end

  test "should show gg_news" do
    get :show, id: @gg_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gg_news
    assert_response :success
  end

  test "should update gg_news" do
    patch :update, id: @gg_news, gg_news: { author: @gg_news.author, classid: @gg_news.classid, fileimg: @gg_news.fileimg, filesize: @gg_news.filesize, imgurl: @gg_news.imgurl, onclick: @gg_news.onclick, title: @gg_news.title }
    assert_redirected_to gg_news_path(assigns(:gg_news))
  end

  test "should destroy gg_news" do
    assert_difference('GgNews.count', -1) do
      delete :destroy, id: @gg_news
    end

    assert_redirected_to gg_news_index_path
  end
end
