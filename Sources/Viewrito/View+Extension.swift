//
//  File.swift
//  
//
//  Created by 최명근 on 5/26/24.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension View {
    func modifier<Modified>(_ modified: (Self) -> Modified) -> some View where Modified: View {
        modified(self)
    }
}
