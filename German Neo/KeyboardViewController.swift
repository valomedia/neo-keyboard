//
//  KeyboardViewController.swift
//  German (Neo)
//

import Foundation
import UIKit
import KeyboardKit
import SwiftUI


class KeyboardViewController: KeyboardInputViewController {

    override func viewDidLoad() {
        services.layoutService = NeoKeyboardLayoutService()
        super.viewDidLoad()
    }

    override func viewWillSetupKeyboardView() {
        super.viewWillSetupKeyboardView()
        setupKeyboardView { controller in
            KeyboardView(
                    state: controller.state,
                    services: controller.services,
                    buttonContent: { $0.view },
                    buttonView: { $0.view },
                    collapsedView: { _ in EmptyView() },
                    emojiKeyboard: { $0.view },
                    toolbar: { _ in EmptyView() })
        }
    }

}
