//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular, design: .default))
            })
            .accentColor(Color.primary)
            Spacer()
            Image(.logoHoneymoonPink)
                .resizable()
                .scaledToFit()
                .frame(height: 26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Image(systemName: "questionmark.circle")
            })
            .font(.system(size: 24, weight: .regular, design: .default))
            .accentColor(Color.primary)
        }.padding()
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    HeaderView()
}
