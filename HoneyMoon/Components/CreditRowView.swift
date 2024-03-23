//
//  CreditRowView.swift
//  HoneyMoon
//
//  Created by Maya Ghamloush on 23/03/2024.
//

import SwiftUI

struct CreditRowView: View {
    var firstText: String
    var secondText: String
    var body: some View {
        HStack{
            Text(firstText).foregroundColor(.gray)
            Spacer()
            Text(secondText)
        }//:HSTACK
    }
}
 
