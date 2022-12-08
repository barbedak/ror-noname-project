require "application_system_test_case"

class BrewsTest < ApplicationSystemTestCase
  setup do
    @brew = brews(:one)
  end

  test "visiting the index" do
    visit brews_url
    assert_selector "h1", text: "Brews"
  end

  test "should create brew" do
    visit brews_url
    click_on "New brew"

    fill_in "Batch", with: @brew.batch
    fill_in "Date", with: @brew.date
    fill_in "Product", with: @brew.product_id
    check "Washed" if @brew.washed
    click_on "Create Brew"

    assert_text "Brew was successfully created"
    click_on "Back"
  end

  test "should update Brew" do
    visit brew_url(@brew)
    click_on "Edit this brew", match: :first

    fill_in "Batch", with: @brew.batch
    fill_in "Date", with: @brew.date
    fill_in "Product", with: @brew.product_id
    check "Washed" if @brew.washed
    click_on "Update Brew"

    assert_text "Brew was successfully updated"
    click_on "Back"
  end

  test "should destroy Brew" do
    visit brew_url(@brew)
    click_on "Destroy this brew", match: :first

    assert_text "Brew was successfully destroyed"
  end
end
