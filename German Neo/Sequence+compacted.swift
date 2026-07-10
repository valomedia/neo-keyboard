//
//  Sequence+compacted.swift
//  Neo Keyboard
//
//  Created by Jean-Pierre Höhmann on 2022-11-04.
//
//

import Foundation


extension Sequence {

    @inlinable func compacted<Unwrapped>() -> [Unwrapped] where Element == Unwrapped? {
        self.compactMap { $0 }
    }

}
