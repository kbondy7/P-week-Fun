require 'test_helper'

class CutesControllerTest < ActionController::TestCase
  setup do
    @cute = cutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cute" do
    assert_difference('Cute.count') do
      post :create, cute: { Animal: @cute.Animal, description: @cute.description, image_url: @cute.image_url, level_of_cuteness: @cute.level_of_cuteness }
    end

    assert_redirected_to cute_path(assigns(:cute))
  end

  test "should show cute" do
    get :show, id: @cute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cute
    assert_response :success
  end

  test "should update cute" do
    patch :update, id: @cute, cute: { Animal: @cute.Animal, description: @cute.description, image_url: @cute.image_url, level_of_cuteness: @cute.level_of_cuteness }
    assert_redirected_to cute_path(assigns(:cute))
  end

  test "should destroy cute" do
    assert_difference('Cute.count', -1) do
      delete :destroy, id: @cute
    end

    assert_redirected_to cutes_path
  end
end
