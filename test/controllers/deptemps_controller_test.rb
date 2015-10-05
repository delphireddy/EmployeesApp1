require 'test_helper'

class DeptempsControllerTest < ActionController::TestCase
  setup do
    @deptemp = deptemps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deptemps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deptemp" do
    assert_difference('Deptemp.count') do
      post :create, deptemp: { dept_no: @deptemp.dept_no, emp_no: @deptemp.emp_no, from_date: @deptemp.from_date, to_date: @deptemp.to_date }
    end

    assert_redirected_to deptemp_path(assigns(:deptemp))
  end

  test "should show deptemp" do
    get :show, id: @deptemp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deptemp
    assert_response :success
  end

  test "should update deptemp" do
    patch :update, id: @deptemp, deptemp: { dept_no: @deptemp.dept_no, emp_no: @deptemp.emp_no, from_date: @deptemp.from_date, to_date: @deptemp.to_date }
    assert_redirected_to deptemp_path(assigns(:deptemp))
  end

  test "should destroy deptemp" do
    assert_difference('Deptemp.count', -1) do
      delete :destroy, id: @deptemp
    end

    assert_redirected_to deptemps_path
  end
end
