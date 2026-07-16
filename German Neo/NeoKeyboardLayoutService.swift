//
//  NeoKeyboardLayoutProvider.swift
//  German (Neo)
//

import Foundation
import KeyboardKit


class NeoKeyboardLayoutService: KeyboardLayoutService {

    /// The locale identifier.
    ///
    public static var localeKey: String {
        Locale.german.identifier
    }

    /// The input set to use for alphanumeric keyboards.
    ///
    public static var alphabeticInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "xvlcwkhgfqß"),
            KeyboardLayout.InputSet.ItemRow(chars: "uiaeosnrtdy"),
            KeyboardLayout.InputSet.ItemRow(lowercased: "üöäpzbm,.j", uppercased: "ÜÖÄPZBM–•J")
        ])
    }

    /// The input set to use for numeric keyboards.
    ///
    public static var numericInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "1234567890'"),
            KeyboardLayout.InputSet.ItemRow(chars: "\\/{}*?()-:@"),
            KeyboardLayout.InputSet.ItemRow(chars: "°§ℓ»«$€„“”")
        ])
    }

    /// The input set to use for symbolic keyboards.
    ///
    public static var symbolicInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "#$|~`+%\"'; "),
            KeyboardLayout.InputSet.ItemRow(chars: "…_[]^!<>=&ſ"),
            KeyboardLayout.InputSet.ItemRow(chars: "¹²³›‹¢¥‚‘’")
        ])
    }

    func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        // Currently there is no device-specific layout.  If there were, we'd switch on context.deviceType here.
        iPhoneNeoKeyboardLayoutService(
            alphabeticInputSet: NeoKeyboardLayoutService.alphabeticInputSet,
            numericInputSet: NeoKeyboardLayoutService.numericInputSet,
            symbolicInputSet: NeoKeyboardLayoutService.symbolicInputSet)
            .keyboardLayout(for: context)
    }

}
