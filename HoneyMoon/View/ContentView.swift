//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            HoneymoonCard(honeymoon: honeymoonData[2])
                .padding()
            Spacer()
            FooterView()
        }//:VSTACK
    }
}

#Preview {
    ContentView()
}
