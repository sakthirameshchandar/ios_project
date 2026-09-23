# 📱 Student Skill & Placement Tracker

A beginner-friendly iOS application developed using Swift and SwiftUI
to help students manage their placement preparation.

## 🚀 Features

- 👤 Student Profile
- 📚 Skill Progress Tracker
- 💻 DSA Progress Tracker
- 🏢 Company Application Tracker
- ✅ Placement Preparation Tasks
- 📊 Overall Progress Dashboard
- 💾 Local Data Storage

## 🛠 Technologies Used

- Swift
- SwiftUI
- Xcode
- UserDefaults
- iOS

## 📂 Project Structure
StudentPlacementTracker
│
├── Models
├── Views
├── ViewModels
├── Services
├── Assets
└── StudentPlacementTrackerApp.swift

Step 1 — Install Xcode

You need a Mac to develop and run a native iOS app with Xcode.

Open App Store on your Mac.
Search Xcode.
Install it.
Open Xcode.
Allow any required permissions/components.

If you're currently using Windows, you cannot directly run a native SwiftUI iOS project in Xcode. You would need access to a Mac, such as a Mac computer or a cloud Mac service.

Step 2 — Create the project

Open Xcode.

Choose:

Create New Project → iOS → App

Then enter:

Setting	Value
Product Name	PlacementTracker
Team	None / your Apple account
Organization Identifier	com.sakthi
Interface	SwiftUI
Language	Swift
Storage	None
Testing	Whatever Xcode defaults to

Click Next → Create.

Step 3 — You'll see this

Xcode will create something like:

PlacementTracker
│
├── PlacementTrackerApp.swift
├── ContentView.swift
└── Assets.xcassets

We will mainly work with:

ContentView.swift
Step 4 — Replace ContentView.swift

Open:

ContentView.swift

Delete everything inside it.

Paste this code:

StudentPlacementTracker/
│
├── StudentPlacementTracker/
│   ├── StudentPlacementTrackerApp.swift
│   ├── ContentView.swift
│   ├── DashboardView.swift
│   ├── SkillsView.swift
│   ├── DSAView.swift
│   ├── CompanyView.swift
│   └── Assets.xcassets
│
├── StudentPlacementTracker.xcodeproj
│
└── README.md


💾 Data Storage

This project does not use an external database.

Student information and application data can be stored locally on the
device using UserDefaults.

⚙️ Requirements
macOS
Xcode
iOS Simulator
Swift
▶️ How to Run
Step 1

Clone the repository:

git clone YOUR_GITHUB_REPOSITORY_URL
Step 2

Open the project in Xcode.

Open:

StudentPlacementTracker.xcodeproj
Step 3

Select an iPhone Simulator from the device menu in Xcode.

Example:

iPhone 17
Step 4

Press the Run ▶ button.

The iOS Simulator will open and launch the application.

📱 Application Modules
Dashboard

Displays:

Overall preparation progress
DSA problems solved
Skills
Companies
Tasks
Skills Tracker

Students can track their progress in:

Java
Python
SQL
DSA
Communication
DSA Tracker

Students can track coding problems based on different topics.

Company Tracker

Students can track companies and their application status.

Student Profile

Stores basic student information such as:

Name
Department
Year
CGPA
Career Goal
🔮 Future Improvements
Firebase authentication
Cloud database
Push notifications
Interview preparation
Placement analytics
Resume management
👩‍💻 Developer

Sakthi R F

Computer Science Engineering


---

# 4. How to run the project

There are **two different things** here.

### A. Running from GitHub

If someone downloads your project:

GitHub
   ↓
Download / Clone
   ↓
Open .xcodeproj
   ↓
Xcode
   ↓
Select iPhone Simulator
   ↓
▶ Run
   ↓
iOS App
B. Running your own project

In Xcode:

File → Open

Select:

StudentPlacementTracker.xcodeproj

Then at the top select:

iPhone 17

Finally click:

▶ Run

The simulator opens.




