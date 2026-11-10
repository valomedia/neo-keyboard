# AGENTS.md

## Project overview

- This is an iOS Swift project for a main app target named `Neo Keyboard`
  and a custom keyboard extension target named `German Neo`.
- Open the project with `Neo Keyboard.xcodeproj`.
  The root `Package.swift` only pins the SwiftLint plugin used by `scripts/lint`;
  it does not build the app or keyboard extension.
- Xcode resolves `KeyboardKit` from `https://github.com/KeyboardKit/KeyboardKit.git`
  with a minimum version of `9.0.0`.
- The privacy notice says the app does not collect or store personal data.
  Keep that guarantee intact when changing keyboard behavior.

## Repository layout

- `Neo Keyboard/` contains the SwiftUI host app.
  `NeoKeyboardApp.swift` is the app entry point,
  and `ContentView.swift` explains how to enable the keyboard.
- `German Neo/` contains the keyboard extension.
  `KeyboardViewController.swift` wires KeyboardKit to the custom layout service.
- `German Neo/NeoKeyboardLayoutService.swift` defines the Neo input sets
  for alphabetic, numeric, and symbolic keyboards.
- `German Neo/iPhoneNeoKeyboardLayoutService.swift` adapts KeyboardKit's iPhone layout,
  including key widths and bottom-row actions.
- `Neo Keyboard.xcodeproj/xcshareddata/xcschemes/` contains shared schemes
  for `Neo Keyboard` and `German Neo`.

## Editing guidance

- Prefer small, focused Swift changes that match the existing style.
  The current files use four-space indentation,
  explicit `Foundation` imports,
  and multiline SwiftUI calls with trailing closures.
- When editing the Neo layout,
  keep row strings ordered and aligned with the intended keyboard rows.
  For rows with separate cases,
  update both `lowercased` and `uppercased` values together.
- Keep keyboard-extension code privacy-preserving.
  Do not add telemetry, logging of typed text,
  network calls, shared storage of input,
  or persistence of user keystrokes.
- Do not commit local Xcode user data,
  build products,
  archives,
  or generated Swift files.
  `.gitignore` already excludes the usual paths.

## Verification

- This repository must be built with Xcode on macOS.
  The container used by many agents may not have `xcodebuild` or the iOS SDK installed.
- When Xcode is available,
  build the host app with:
  `xcodebuild -project "Neo Keyboard.xcodeproj" -scheme "Neo Keyboard" -destination "generic/platform=iOS" build`
- To check the extension scheme directly,
  use:
  `xcodebuild -project "Neo Keyboard.xcodeproj" -scheme "German Neo" -destination "generic/platform=iOS" build`
- The `German NeoTests` target is included in the shared schemes.
  Run tests with an available simulator destination as documented in `README.md`.
- For layout-only changes,
  at minimum inspect the changed row strings and build both shared schemes when possible.
- Run strict SwiftLint with `scripts/lint`.
- `.github/workflows/ci.yml` calls the shared
  `valomedia/github-workflows/.github/workflows/ios-ci.yml` workflow.
  The shared workflow owns concurrency and simulator creation.
  Keep CocoaPods installation disabled because this project uses Swift Package Manager.
  Custom `-project` commands preserve the generic iOS build and simulator unit tests;
  tests use the shared workflow's `IOS_CI_SIMULATOR_UDID`.
  The required `workspace` input is unused by these custom commands.
