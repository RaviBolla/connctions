require "application_system_test_case"

class ConnectionsTest < ApplicationSystemTestCase
  setup do
    @connection = connections(:one)
  end

  test "visiting the index" do
    visit connections_url
    assert_selector "h1", text: "Connections"
  end

  test "creating a Connection" do
    visit connections_url
    click_on "New Connection"

    fill_in "Email", with: @connection.email
    fill_in "First name", with: @connection.first_name
    fill_in "Last name", with: @connection.last_name
    fill_in "Phone", with: @connection.phone
    fill_in "Twitter", with: @connection.twitter
    click_on "Create Connection"

    assert_text "Connection was successfully created"
    click_on "Back"
  end

  test "updating a Connection" do
    visit connections_url
    click_on "Edit", match: :first

    fill_in "Email", with: @connection.email
    fill_in "First name", with: @connection.first_name
    fill_in "Last name", with: @connection.last_name
    fill_in "Phone", with: @connection.phone
    fill_in "Twitter", with: @connection.twitter
    click_on "Update Connection"

    assert_text "Connection was successfully updated"
    click_on "Back"
  end

  test "destroying a Connection" do
    visit connections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Connection was successfully destroyed"
  end
end
