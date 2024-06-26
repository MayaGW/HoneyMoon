//
//  FooterView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct FooterView: View {
    //MARK: - PROPERTIES
    
    @Binding var showBookingAlert: Bool
    var body: some View {
        HStack {
          Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            Spacer()
            
            Button(action: {
                showBookingAlert.toggle()
            }, label: {
                Text("Book destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            })
            
          
              
            Spacer()
             
                Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
                    .foregroundColor(.primary)
           
        }//:HSTACK
        .padding()
    }
}

 
struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
    }
}
