//
//  Sequence+compacted.swift
//  Neo Keyboard
//

import Foundation


extension Sequence {

    @inlinable func compacted<Unwrapped>() -> [Unwrapped] where Element == Unwrapped? {
        self.compactMap { $0 }
    }

}