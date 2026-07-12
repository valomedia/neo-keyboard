//
//  Bool+then.swift
//  Neo Keyboard
//

import Foundation

infix operator .!!


// MARK: Bool

extension Bool {

    // MARK: + then

    /// Undocumented.
    ///
    /// - Todo: Document.
    /// - Parameters:
    ///     - value:
    /// - Returns:
    ///
    func then<Value>(_ value: Value) -> Value? {
        self ? value : nil
    }

    /// Undocumented.
    ///
    /// - Todo: Document.
    /// - Parameters:
    ///     - value:
    /// - Returns:
    ///
    func then<Value>(_ value: Value?) -> Value? {
        self ? value : nil
    }

}

/// Undocumented.
///
/// - Todo: Document.
/// - Parameters:
///     - left:
///     - right:
/// - Returns:
///
func .!!<Value>(left: Bool, right: Value) -> Value? {
    left.then(right)
}

/// Undocumented.
///
/// - Todo: Document.
/// - Parameters:
///     - left:
///     - right:
/// - Returns:
///
func .!!<Value>(left: Bool, right: Value?) -> Value? {
    left.then(right)
}
