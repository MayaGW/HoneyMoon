//
//  ButtonModifier.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .background(Capsule().fill(.pink))
            .padding(.horizontal, 25)
            .foregroundColor(.white)

    }
}
