require 'test_helper'

class IllnessesControllerTest < ActionController::TestCase
  setup do
    @illness = illnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illness" do
    assert_difference('Illness.count') do
      post :create, illness: { congestion: @illness.congestion, end: @illness.end, fever: @illness.fever, headache: @illness.headache, shits: @illness.shits, start: @illness.start, user: @illness.user }
    end

    assert_redirected_to illness_path(assigns(:illness))
  end

  test "should show illness" do
    get :show, id: @illness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illness
    assert_response :success
  end

  test "should update illness" do
    patch :update, id: @illness, illness: { congestion: @illness.congestion, end: @illness.end, fever: @illness.fever, headache: @illness.headache, shits: @illness.shits, start: @illness.start, user: @illness.user }
    assert_redirected_to illness_path(assigns(:illness))
  end

  test "should destroy illness" do
    assert_difference('Illness.count', -1) do
      delete :destroy, id: @illness
    end

    assert_redirected_to illnesses_path
  end
end
