//
//  AddressView.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import SwiftUI

var delivereeLocation: [Address] = [
    .init(id: 1, address: "Manas Ave", addressExpression: "Deliver to current Location", addressIconImage: "plus"),
    .init(id: 1, address: "Manas Ave", addressExpression: "Deliver to current Location", addressIconImage: "plus"),
    .init(id: 1, address: "Manas Ave", addressExpression: "Deliver to current Location", addressIconImage: "plus"),
    .init(id: 1, address: "Manas Ave", addressExpression: "Deliver to current Location", addressIconImage: "plus")
]


struct AddressView: View {
    @Environment(\.dismiss) var dismiss
    
    
    @Binding var addressName: String
    
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
            
            
            Button("Dismiss Modal") {
                dismiss()
            }
        }
        
        
    }
}
