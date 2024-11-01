require "application_system_test_case"

class WaitersTest < ApplicationSystemTestCase
  setup do
    @waiter = waiters(:one)
  end

  test "visiting the index" do
    visit waiters_url
    assert_selector "h1", text: "Waiters"
  end

  test "should create waiter" do
    visit waiters_url
    click_on "New waiter"

    fill_in "Information", with: @waiter.information
    fill_in "Name", with: @waiter.name
    click_on "Create Waiter"

    assert_text "Waiter was successfully created"
    click_on "Back"
  end

  test "should update Waiter" do
    visit waiter_url(@waiter)
    click_on "Edit this waiter", match: :first

    fill_in "Information", with: @waiter.information
    fill_in "Name", with: @waiter.name
    click_on "Update Waiter"

    assert_text "Waiter was successfully updated"
    click_on "Back"
  end

  test "should destroy Waiter" do
    visit waiter_url(@waiter)
    click_on "Destroy this waiter", match: :first

    assert_text "Waiter was successfully destroyed"
  end
end
