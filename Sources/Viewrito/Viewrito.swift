//
//  Viewrito.swift
//
//
//  Created by 최명근 on 5/20/24.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Viewrito<Content, Modified>: View where Content: View, Modified: View {
    let content: () -> Content
    let modified: (Content) -> Modified
    
    public init(@ViewBuilder content: @escaping () -> Content, @ViewBuilder modified: @escaping (Content) -> Modified) {
        self.content = content
        self.modified = modified
    }
    
    public var body: some View {
        let content = content()
        let modified = modified(content)
        if modified.isEmpty {
            content
        } else {
            modified
        }
    }
}
