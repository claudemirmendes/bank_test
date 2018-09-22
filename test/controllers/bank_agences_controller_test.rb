require 'test_helper'

class BankAgencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_agence = bank_agences(:one)
  end

  test "should get index" do
    get bank_agences_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_agence_url
    assert_response :success
  end

  test "should create bank_agence" do
    assert_difference('BankAgence.count') do
      post bank_agences_url, params: { bank_agence: { address: @bank_agence.address, agence: @bank_agence.agence } }
    end

    assert_redirected_to bank_agence_url(BankAgence.last)
  end

  test "should show bank_agence" do
    get bank_agence_url(@bank_agence)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_agence_url(@bank_agence)
    assert_response :success
  end

  test "should update bank_agence" do
    patch bank_agence_url(@bank_agence), params: { bank_agence: { address: @bank_agence.address, agence: @bank_agence.agence } }
    assert_redirected_to bank_agence_url(@bank_agence)
  end

  test "should destroy bank_agence" do
    assert_difference('BankAgence.count', -1) do
      delete bank_agence_url(@bank_agence)
    end

    assert_redirected_to bank_agences_url
  end
end
