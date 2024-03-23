//
//  HeaderComponent.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment:.center, spacing: 20){
           Capsule()
                .frame(width: 120, height: 6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.secondary)
                .opacity(0.2)
            
            Image(.logoHoneymoon)
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 128)) {
    HeaderComponent()
}
