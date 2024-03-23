//
//  TitleModifier.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
