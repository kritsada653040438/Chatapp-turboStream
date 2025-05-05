require 'rails_helper'

RSpec.describe "User switching rooms", type: :system do
  context "rooms exist" do
    before do
      Room.create!(name: "Room 1")
      Room.create!(name: "Room 2")
    end

    context "user enters a room" do
      before do
        visit root_path
        click_link "Room 1"
      end

      it "allows user to switch between rooms", js: true do
        user_switches_to_room
        user_should_see_the_room("Room 2")
      end

      def user_switches_to_room
        click_link "Room 2"
      end

      def user_should_see_the_room(room_name)
        expect(page).to have_content room_name
      end
    end
  end
end
