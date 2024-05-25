//
//  Viewrito.swift
//
//
//  Created by 최명근 on 5/20/24.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public struct Viewrito<Content, Returning>: View where Content: View, Returning: View {
    let content: () -> Content
    let returning: (Content) -> Returning
    
    public var body: some View {
        returning(content())
    }
}
