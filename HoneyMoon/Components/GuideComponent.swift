//
//  GuideComponent.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct GuideComponent: View {
    //MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var image: String
    //MARK: - BODY
    var body: some View {
        HStack{
            Image(systemName: image)
                .font(.largeTitle)
                .foregroundColor(.pink)
            VStack(alignment:.leading, spacing: 4){
                HStack(alignment:.center, spacing: 20){
                    Text(title.uppercased())
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                    
                }//:HSTACK
                Divider().padding(.bottom,4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
            }//:VSTACK
        }//:HSTACK Main
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    GuideComponent(title: "Title", subtitle: "Swipe Right", description: "This a placeholder This a placeholde This a placeholde This a placeholde ", image: "heart.circle")
}
