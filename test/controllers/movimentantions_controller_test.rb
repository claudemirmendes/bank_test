require 'test_helper'

class MovimentantionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimentantion = movimentantions(:one)
  end

  test "should get index" do
    get movimentantions_url
    assert_response :success
  end

  test "should get new" do
    get new_movimentantion_url
    assert_response :success
  end

  test "should create movimentantion" do
    assert_difference('Movimentantion.count') do
      post movimentantions_url, params: { movimentantion: { bank_account_id: @movimentantion.bank_account_id, movimentation_date: @movimentantion.movimentation_date, movimentation_type: @movimentantion.movimentation_type, user_id: @movimentantion.user_id, value: @movimentantion.value } }
    end

    assert_redirected_to movimentantion_url(Movimentantion.last)
  end

  test "should show movimentantion" do
    get movimentantion_url(@movimentantion)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimentantion_url(@movimentantion)
    assert_response :success
  end

  test "should update movimentantion" do
    patch movimentantion_url(@movimentantion), params: { movimentantion: { bank_account_id: @movimentantion.bank_account_id, movimentation_date: @movimentantion.movimentation_date, movimentation_type: @movimentantion.movimentation_type, user_id: @movimentantion.user_id, value: @movimentantion.value } }
    assert_redirected_to movimentantion_url(@movimentantion)
  end

  test "should destroy movimentantion" do
    assert_difference('Movimentantion.count', -1) do
      delete movimentantion_url(@movimentantion)
    end

    assert_redirected_to movimentantions_url
  end
end
