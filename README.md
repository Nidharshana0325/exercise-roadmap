# Exercise Roadmap

## Description
A Flutter app for tracking and planning exercises. Supports Android/iOS with features like workout tracking, goal setting, and progress monitoring.

## Setup & Compilation Instructions
1. Clone the repo:  
   `git clone https://github.com/Nidharshana0325/exercise-roadmap.git`
2. Install dependencies:  
   `flutter pub get`
3. Run the project:  
   `flutter run` (Android/iOS)

### Build for Production
- **Android**: `flutter build apk --release`
- **iOS**: `flutter build ios --release`

## Resources - Demo and Documentation
- [Project Files and Assets](https://drive.google.com/drive/folders/14BjZj80-DCtmhp6wpu610I0im9GuvssZ?usp=sharing)

## Architecture Overview
- **State Management**: **Provider** for managing app state.
- **Storage**: [SharedPreferences] for local data persistence.
- **UI**: Organized into screens and widgets for easy navigation and scalability.

## Design Decisions
- **Provider** was chosen for state management due to its simplicity and flexibility.
- **SharedPreferences** used for storing data locally, enabling offline functionality.
- **Modular UI** design for maintainability and ease of adding new features.

## Known Limitations
- Limited offline support for some features.
- Platform-specific limitations may arise (Android/iOS).



