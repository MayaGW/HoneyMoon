//
//  HoneymoonCard.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 22/03/2024.
//

import SwiftUI

struct HoneymoonCard: View {
    //MARK: - PROPERTIES
    let id = UUID()
    var honeymoon : Destination
    //MARK: - BODY
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(24)
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12){
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 1)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                       
                        )//overlay
                    
              
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                        Capsule()
                            .fill(.white)
                        )
                }//vstack
                    .frame(minWidth: 280)
                    .padding(.bottom, 50)
                ,alignment: .bottom
            )//overlay
    }
}
//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 600)) {
    HoneymoonCard(honeymoon: honeymoonData[1])
}
