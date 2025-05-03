require 'rails_helper'

describe "User switching rooms" do
  context "when user visits the main page" do
    it "allows user to switch between rooms", js: true do
      user_creates_test_rooms
      user_visits_home_page
      user_clicks_first_room
      user_must_see_first_room_name
      user_clicks_second_room
      user_must_see_second_room_name
    end
  end

  def user_creates_test_rooms
    @room1 = Room.create!(name: "Room 1")
    @room2 = Room.create!(name: "Room 2")
  end

  def user_visits_home_page
    visit root_path
  end

  def user_clicks_first_room
    click_link "Room 1"
  end

  def user_must_see_first_room_name
    expect(page).to have_content "Room 1"
  end

  def user_clicks_second_room
    click_link "Room 2"
  end

  def user_must_see_second_room_name
    expect(page).to have_content "Room 2"
  end
end
