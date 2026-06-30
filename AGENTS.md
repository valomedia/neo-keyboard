# AGENTS.md – neo-keyboard

## Project shape

- This repository is an iOS Swift project for an app plus custom keyboard extension
  that implements the German Neo keyboard layout.
- Open `Neo Keyboard.xcodeproj` in Xcode.
  There is no Swift Package manifest or separate CLI build system.
- The main app target is `Neo Keyboard`.
  Its SwiftUI entry point and placeholder UI live in `Neo Keyboard/`.
- The keyboard extension target is `German Neo`.
  Its controller, layout service, and keyboard-specific helpers live in `German Neo/`.
- `KeyboardKit` is resolved by the Xcode project as a Swift Package dependency
  from `https://github.com/KeyboardKit/KeyboardKit.git` with minimum version `9.0.0`.

## Editing guidance

- Quote paths with spaces in shell commands,
  especially `Neo Keyboard/`, `German Neo/`, and `Neo Keyboard.xcodeproj`.
- Keep Neo character rows in `German Neo/NeoKeyboardLayoutService.swift`.
- Keep iPhone-specific key sizing and bottom-row behavior in
  `German Neo/iPhoneNeoKeyboardLayoutService.swift`.
- Keep extension setup in `German Neo/KeyboardViewController.swift`.
- Do not hand-edit local Xcode user data or generated build artifacts
  such as `xcuserdata/`, `.build/`, `.ipa`, `.dSYM`, `*.xcframework`, or `*.framework`.
- The app declares that it stores no personal data.
  Do not add persistence, telemetry, analytics, or network behavior without updating privacy documentation.

## Verification

- There are no test targets in the current Xcode project.
- Preferred full verification on macOS with Xcode installed:

  ```sh
  xcodebuild -project "Neo Keyboard.xcodeproj" -scheme "Neo Keyboard" -destination 'generic/platform=iOS' build
  ```

- If schemes are not shared in a fresh checkout,
  inspect available targets with:

  ```sh
  xcodebuild -project "Neo Keyboard.xcodeproj" -list
  ```

- In Linux or non-Xcode environments,
  at minimum verify Markdown and inspect the changed Swift or project files directly.
