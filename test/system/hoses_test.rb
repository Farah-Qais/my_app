require "application_system_test_case"

class HosesTest < ApplicationSystemTestCase
  setup do
    @hose = hoses(:one)
  end

  test "visiting the index" do
    visit hoses_url
    assert_selector "h1", text: "Hoses"
  end

  test "should create hose" do
    visit hoses_url
    click_on "New hose"

    fill_in "Price", with: @hose.price
    fill_in "Size", with: @hose.size
    fill_in "User", with: @hose.user_id
    click_on "Create Hose"

    assert_text "Hose was successfully created"
    click_on "Back"
  end

  test "should update Hose" do
    visit hose_url(@hose)
    click_on "Edit this hose", match: :first

    fill_in "Price", with: @hose.price
    fill_in "Size", with: @hose.size
    fill_in "User", with: @hose.user_id
    click_on "Update Hose"

    assert_text "Hose was successfully updated"
    click_on "Back"
  end

  test "should destroy Hose" do
    visit hose_url(@hose)
    click_on "Destroy this hose", match: :first

    assert_text "Hose was successfully destroyed"
  end
end
