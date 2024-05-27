//
//  File.swift
//  
//
//  Created by 최명근 on 5/26/24.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    @ViewBuilder
    public func addViewModifier<Modified>(@ViewBuilder modified: @escaping (Self) -> Modified) -> some View where Modified: View {
        let returning = modified(self)
        if returning.isEmpty {
            self
        } else {
            returning
        }
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    internal var isEmpty: Bool {
        let mirror = Mirror(reflecting: self)
        return mirror.children.isEmpty
    }
}
