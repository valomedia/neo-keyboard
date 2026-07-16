# neo-keyboard

Neo Keyboard is an iOS app and custom keyboard extension that brings the German
[Neo keyboard layout](https://neo-layout.org/) to iPhone and iPad. The extension
is named **German Neo** and uses [KeyboardKit](https://github.com/KeyboardKit/KeyboardKit)
with a few touch-screen-oriented layout tweaks.

## Features

- German Neo alphabetic, numeric, and symbolic keyboard layouts.
- A small host app that explains how to enable the keyboard in iOS settings.
- No full-access keyboard requirement: the extension sets `RequestsOpenAccess` to
  `false`.
- Privacy-preserving behavior: typed text is passed to iOS and is not stored by
  this app.

## Requirements

- macOS with Xcode and the iOS SDK.
- iOS 15.2 or newer for the app and keyboard extension.
- An Apple development team configured in Xcode if you want to install the app on
  a device.

The project is opened through `Neo Keyboard.xcodeproj`. There is no separate
command-line package manifest for building the app.

## Getting started

1. Open `Neo Keyboard.xcodeproj` in Xcode.
2. Let Xcode resolve the Swift Package dependency on KeyboardKit.
3. Select the `Neo Keyboard` scheme.
4. Choose an iOS simulator or a signed physical device.
5. Build and run the app.

From the command line, when Xcode is available, you can build the host app with:

```sh
xcodebuild \
  -project "Neo Keyboard.xcodeproj" \
  -scheme "Neo Keyboard" \
  -destination "generic/platform=iOS" \
  build
```

You can build the keyboard extension scheme with:

```sh
xcodebuild \
  -project "Neo Keyboard.xcodeproj" \
  -scheme "German Neo" \
  -destination "generic/platform=iOS" \
  build
```

## Enabling the keyboard on iOS

After installing the app on a device:

1. Open **Settings**.
2. Go to **General > Keyboard > Keyboards**.
3. Tap **Add New Keyboard…**.
4. Select **German Neo**.

Full Access is not required for this keyboard.

## Running tests

The `German NeoTests` target is attached to the shared schemes. To run it from
Xcode, select either shared scheme and use **Product > Test**.

From the command line, use an installed simulator destination, for example:

```sh
xcodebuild \
  -project "Neo Keyboard.xcodeproj" \
  -scheme "German Neo" \
  -destination "platform=iOS Simulator,name=<Simulator Name>" \
  test
```

Replace `<Simulator Name>` with a simulator listed by
`xcrun simctl list devices available`.

## Repository layout

- `Neo Keyboard/` contains the SwiftUI host app.
- `German Neo/` contains the custom keyboard extension and Neo layout services.
- `German NeoTests/` contains XCTest coverage for shared utility behavior.
- `Neo Keyboard.xcodeproj/xcshareddata/xcschemes/` contains the shared Xcode schemes.
- `PRIVACY` documents the app's privacy behavior.
- `LICENSE` contains the GNU General Public License v3.0.

## Privacy

Neo Keyboard does not collect or store personal data. The keyboard can be used to
enter personal data into other apps, but that input is passed to iOS and is not
retained by this app. See [`PRIVACY`](PRIVACY) for the full privacy notice.

## License

This project is licensed under the GNU General Public License v3.0. See
[`LICENSE`](LICENSE) for details.
