//
//  ServiceView.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import SwiftUI

struct ServiceView: View {
    let arrServices = ["takeAwayFood", "bellService", "curbside", "discount", "storeOnline" ]
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 26){
                Button {
                    
                } label: {
                    HStack{
                        Image("icon1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25.0)

                        Text("Delivary")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                    }
                    
                }
                .foregroundColor(Color.white)
                .padding(.vertical, 25)
                .padding(.horizontal, 10)
                .background(Color.black)
                .cornerRadius(25)
                .shadow(color: .gray, radius: 5, x: 3
                        , y: 8)
                
                ForEach(arrServices, id: \.self) { arrService in
                    Button {
                        print("\(arrService)")
                    } label: {
                        Image(arrService)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30.0)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 5, x: 3, y: 8)
                    
                }
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 0.5)
                    })
            }.padding(.bottom,15)
                .padding(.leading, 10)
        }
        .frame(width: 414, height: 100)
        
    }
}

struct ServiceView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceView()
    }
}
