require 'test_helper'

class SalariesControllerTest < ActionController::TestCase
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salarie.count') do
      post :create, salary: { emp_no: @salary.emp_no, from_date: @salary.from_date, salary: @salary.salary, to_date: @salary.to_date }
    end

    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should show salary" do
    get :show, id: @salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary
    assert_response :success
  end

  test "should update salary" do
    patch :update, id: @salary, salary: { emp_no: @salary.emp_no, from_date: @salary.from_date, salary: @salary.salary, to_date: @salary.to_date }
    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should destroy salary" do
    assert_difference('Salarie.count', -1) do
      delete :destroy, id: @salary
    end

    assert_redirected_to salaries_path
  end
end
