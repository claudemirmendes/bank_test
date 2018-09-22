require "application_system_test_case"

class BankAgencesTest < ApplicationSystemTestCase
  setup do
    @bank_agence = bank_agences(:one)
  end

  test "visiting the index" do
    visit bank_agences_url
    assert_selector "h1", text: "Bank Agences"
  end

  test "creating a Bank agence" do
    visit bank_agences_url
    click_on "New Bank Agence"

    fill_in "Address", with: @bank_agence.address
    fill_in "Agence", with: @bank_agence.agence
    click_on "Create Bank agence"

    assert_text "Bank agence was successfully created"
    click_on "Back"
  end

  test "updating a Bank agence" do
    visit bank_agences_url
    click_on "Edit", match: :first

    fill_in "Address", with: @bank_agence.address
    fill_in "Agence", with: @bank_agence.agence
    click_on "Update Bank agence"

    assert_text "Bank agence was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank agence" do
    visit bank_agences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank agence was successfully destroyed"
  end
end
