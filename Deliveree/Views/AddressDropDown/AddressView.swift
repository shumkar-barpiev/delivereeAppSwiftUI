//
//  AddressView.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import SwiftUI

var delivereeLocation: [AddressModel] = [
    .init(id: 1, addressName: "Deliver to current location", addressExpression: "Manas Ave", addressIconImage: "location", editButtonStatus: false),
    .init(id: 2, addressName: "Deliver to different location", addressExpression: "Choose location on the map", addressIconImage: "marker", editButtonStatus: false)
]



var savedLocation: [AddressModel] = [
    .init(id: 1, addressName: "Home", addressExpression: "Jukeev-Pudovkin St 43, apt #12", addressIconImage: "home", editButtonStatus: true),
    .init(id: 2, addressName: "Work", addressExpression: "Manas Ave 32, floor 7, office #703", addressIconImage: "work", editButtonStatus: true),
    .init(id: 3, addressName: "Hotel", addressExpression: "Frunze St 50, floor 10, room #1011 ", addressIconImage: "hotel", editButtonStatus: true)
]

struct AddressView: View {
    
    @Binding var addressName: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
//            choose location
            Text("Choose delivery location")
                .font(.title3)
                .bold()
                .frame(width: UIScreen.main.bounds.width, height: 30, alignment: .leading)
                .padding(.leading, 15)
                .padding(.vertical, 25)
                
            
            VStack{
                ForEach(delivereeLocation){ location in
                    HStack{
                        Image("\(location.addressIconImage)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        VStack(alignment: .leading){
                            Text("\(location.addressName)")
                                .font(.system(size: 18))
                                .foregroundColor(Color.black)
                            Text("\(location.addressExpression)")
                                .font(.system(size: 16))
                                .foregroundColor(Color.gray.opacity(0.8))
                        }.frame(width: 290, height: 40, alignment: .leading)
                        
                        
                        
                        if location.editButtonStatus{
                            Button {
                                print("\(location.addressName)")
                                
                            } label: {
                                Image("edit")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30)
                            }

                        }
                    }
                    .onTapGesture {
                        self.addressName = "\(location.addressExpression)"
                        dismiss()
                    }
                    .frame(width: UIScreen.main.bounds.width-40, height: 40, alignment: .leading)
                    Divider()
                }
            }
            
            
//            saved addresses
            Text("Saved Addresses")
                .font(.title3)
                .bold()
                .frame(width: UIScreen.main.bounds.width, height: 30, alignment: .leading)
                .padding(.leading, 15)
                .padding(.vertical, 25)
            
            VStack{
                ForEach(savedLocation){ location in
                    HStack{
                        Image("\(location.addressIconImage)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        VStack(alignment: .leading){
                            Text("\(location.addressName)")
                                .font(.system(size: 18))
                                .foregroundColor(Color.black)
                            Text("\(location.addressExpression)")
                                .font(.system(size: 16))
                                .foregroundColor(Color.gray.opacity(0.8))
                        }.frame(width: 290, height: 40, alignment: .leading)
                        
                        
                        
                        if location.editButtonStatus{
                            Button {
                                print("\(location.addressName)")
                                
                            } label: {
                                Image("edit")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30)
                            }

                        }
                    }
                    .onTapGesture {
                        self.addressName = "\(location.addressExpression)"
                        
                        dismiss()
                    }
                    .frame(width: UIScreen.main.bounds.width-40, height: 40, alignment: .leading)
                    Divider()
                }
            }
            
        }
        .padding()
        Spacer()
        
    }
}
