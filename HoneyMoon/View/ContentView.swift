//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 22/03/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: -  Properties
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            Spacer()
            HoneymoonCard(honeymoon: honeymoonData[2])
                .padding()
            Spacer()
            FooterView(showBookingAlert: $showAlert)
        }//:VSTACK
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a lovely and most precious of the times together for the amazing couple"), dismissButton: .default(Text("Happy Honeymoon")))
        })
        
        
    }
}

#Preview {
    ContentView()
}
