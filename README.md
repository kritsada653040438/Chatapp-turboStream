# 🧪 System Test: `switching_rooms_spec.rb`

## 📂 File Location:
```
/spec/system/switching_rooms_spec.rb
```

## 📝 Purpose:
This system test verifies that users can **switch between chat rooms** and see the correct messages for each room in a multi-room chat application.

## 🔍 What It Tests:
- Users can view a list of chat rooms.
- When clicking a room name, the UI updates to show only that room’s messages.
- Messages are scoped correctly per room (no message leakage between rooms).

## ✅ Example Behaviors Checked:
- Clicking “Room 1” shows only messages from Room 1.
- Switching to “Room 2” hides Room 1’s messages and shows Room 2’s.
- Creating or deleting a message updates only the current room.

## 🛠️ Technologies Used:
- **RSpec** for writing and structuring the test.
- **Capybara** for simulating user interactions (clicking, navigation).

## 🚀 Run the System Test:
```bash
rspec 
```

> ✅ Tip: Make sure `chromedriver` is installed and configured if you're using `Capybara + Selenium`.

