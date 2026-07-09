# neo-keyboard

An implementation of the Neo keyboard layout for iOS
with some minor tweaks to make it work on a small touch screen.

## Development

Run Xcode static analysis locally with:

```sh
xcodebuild analyze \
  -project "Neo Keyboard.xcodeproj" \
  -scheme "German Neo" \
  -destination "generic/platform=iOS" \
  CODE_SIGNING_ALLOWED=NO
```
