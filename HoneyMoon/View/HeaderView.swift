//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
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
            Button(action: {
                showGuideView.toggle()
            }, label: {
              Image(systemName: "questionmark.circle")
            })
            .font(.system(size: 24, weight: .regular, design: .default))
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        }.padding()
    }
}

 
struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
    }
}
