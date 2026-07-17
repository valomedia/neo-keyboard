//
//  iPhoneNeoKeyboardLayoutProvider.swift
//  Neo Keyboard
//

import Foundation
import KeyboardKit

class iPhoneNeoKeyboardLayoutService: KeyboardLayout.iPhoneLayoutService {
    override func itemSizeWidth(
            for action: KeyboardAction,
            row: Int,
            index: Int,
            context: KeyboardContext
    ) -> KeyboardLayout.ItemWidth {
        switch action {
        case .character, .backspace: return .input
        default: return super.itemSizeWidth(for: action, row: row, index: index, context: context)
        }
    }

    override func lowerLeadingActions(
            for actions: KeyboardAction.Rows,
            context: KeyboardContext
    ) -> KeyboardAction.Row {
        []
    }

    override func lowerTrailingActions(
            for actions: KeyboardAction.Rows,
            context: KeyboardContext
    ) -> KeyboardAction.Row {
        [.backspace]
    }

    override func bottomActions(for context: KeyboardContext) -> KeyboardAction.Row {
        [
            context.needsInputModeSwitchKey.then(.nextKeyboard),
            keyboardSwitchActionForBottomRow(for: context),
            keyboardSwitchActionForBottomInputRow(for: context),
            .space,
            keyboardReturnAction(for: context)
        ].compacted()
    }
}
