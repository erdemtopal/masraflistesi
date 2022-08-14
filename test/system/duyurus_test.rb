require "application_system_test_case"

class DuyurusTest < ApplicationSystemTestCase
  setup do
    @duyuru = duyurus(:one)
  end

  test "visiting the index" do
    visit duyurus_url
    assert_selector "h1", text: "Duyurus"
  end

  test "creating a Duyuru" do
    visit duyurus_url
    click_on "New Duyuru"

    fill_in "Body", with: @duyuru.body
    fill_in "Title", with: @duyuru.title
    click_on "Create Duyuru"

    assert_text "Duyuru was successfully created"
    click_on "Back"
  end

  test "updating a Duyuru" do
    visit duyurus_url
    click_on "Edit", match: :first

    fill_in "Body", with: @duyuru.body
    fill_in "Title", with: @duyuru.title
    click_on "Update Duyuru"

    assert_text "Duyuru was successfully updated"
    click_on "Back"
  end

  test "destroying a Duyuru" do
    visit duyurus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duyuru was successfully destroyed"
  end
end
