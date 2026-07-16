//
//  Bool+else.swift
//  Neo Keyboard
//

import Foundation


// MARK: Bool

extension Bool {

    // MARK: + else

    /// Undocumented.
    ///
    /// - Todo: Document.
    /// - Parameters:
    ///     - value:
    /// - Returns:
    ///
    func `else`<Value>(_ value: Value) -> Value? {
        self ? nil : value
    }

    /// Undocumented.
    ///
    /// - Todo: Document.
    /// - Parameters:
    ///     - value:
    /// - Returns:
    ///
    func `else`<Value>(_ value: Value?) -> Value? {
        self ? nil : value
    }

}
