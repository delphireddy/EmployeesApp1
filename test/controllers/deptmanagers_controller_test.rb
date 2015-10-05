require 'test_helper'

class DeptmanagersControllerTest < ActionController::TestCase
  setup do
    @deptmanager = deptmanagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deptmanagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deptmanager" do
    assert_difference('Deptmanager.count') do
      post :create, deptmanager: { dept_no: @deptmanager.dept_no, emp_no: @deptmanager.emp_no, from_date: @deptmanager.from_date, to_date: @deptmanager.to_date }
    end

    assert_redirected_to deptmanager_path(assigns(:deptmanager))
  end

  test "should show deptmanager" do
    get :show, id: @deptmanager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deptmanager
    assert_response :success
  end

  test "should update deptmanager" do
    patch :update, id: @deptmanager, deptmanager: { dept_no: @deptmanager.dept_no, emp_no: @deptmanager.emp_no, from_date: @deptmanager.from_date, to_date: @deptmanager.to_date }
    assert_redirected_to deptmanager_path(assigns(:deptmanager))
  end

  test "should destroy deptmanager" do
    assert_difference('Deptmanager.count', -1) do
      delete :destroy, id: @deptmanager
    end

    assert_redirected_to deptmanagers_path
  end
end
