require "application_system_test_case"

class MovimentantionsTest < ApplicationSystemTestCase
  setup do
    @movimentantion = movimentantions(:one)
  end

  test "visiting the index" do
    visit movimentantions_url
    assert_selector "h1", text: "Movimentantions"
  end

  test "creating a Movimentantion" do
    visit movimentantions_url
    click_on "New Movimentantion"

    fill_in "Bank Account", with: @movimentantion.bank_account_id
    fill_in "Movimentation Date", with: @movimentantion.movimentation_date
    fill_in "Movimentation Type", with: @movimentantion.movimentation_type
    fill_in "User", with: @movimentantion.user_id
    fill_in "Value", with: @movimentantion.value
    click_on "Create Movimentantion"

    assert_text "Movimentantion was successfully created"
    click_on "Back"
  end

  test "updating a Movimentantion" do
    visit movimentantions_url
    click_on "Edit", match: :first

    fill_in "Bank Account", with: @movimentantion.bank_account_id
    fill_in "Movimentation Date", with: @movimentantion.movimentation_date
    fill_in "Movimentation Type", with: @movimentantion.movimentation_type
    fill_in "User", with: @movimentantion.user_id
    fill_in "Value", with: @movimentantion.value
    click_on "Update Movimentantion"

    assert_text "Movimentantion was successfully updated"
    click_on "Back"
  end

  test "destroying a Movimentantion" do
    visit movimentantions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movimentantion was successfully destroyed"
  end
end
