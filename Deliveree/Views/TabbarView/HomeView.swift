//
//  HomeView.swift
//  Deliveree
//
//  Created by Shumkar on 2/3/23.
//

import SwiftUI

struct HomeView: View {
    @State private var isPresentedAddressView = false
    @State private var addressName = "Enter your address"
    @State private var openedStoresNumber = 56
    @State private var searchTextField = ""
    
    let rightImage = UIImage(systemName: "trash")
    
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    print("menu")
                    
                } label: {
                    Image("menuIcon")
                        .font(.title2)
                        .padding()
                        
                }
                .background(Color.white)
                .cornerRadius(15)
                Spacer()
                
                Button {
                    print("cart")
                } label: {
                    Image(systemName: "cart")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .padding()
                    
                }.background(Color.black)
                    .cornerRadius(15)

            }
            .overlay(content: {
                VStack{
                    Text("Delivering to")
                        .foregroundColor(Color(.systemGray))
                    HStack{
                        Button {
                            isPresentedAddressView.toggle()
                        }
                        label: {
                            HStack{
                                Text("\(addressName)")
                                Image(systemName: "chevron.down")
                            }
                        
                        }
                        .fullScreenCover(isPresented: $isPresentedAddressView, content: {
                            AddressView(addressName: $addressName)
                        })
                    }
                    .foregroundColor(Color.black)
                    .font(.title3)
                }
            })
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
//                    horizontal scroll view
                    ServiceView()

//                    number of opened stores
                    Text("\(openedStoresNumber) stores open")
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(width: UIScreen.main.bounds.width-20, height: 30, alignment: .leading)
        
//                    searching and setting bar
                    HStack{
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color.gray)
                            TextField("Find restaurant by name", text: $searchTextField)
                                .frame(width: 247, height: 27, alignment: .leading)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: .gray, radius: 5, x: 0, y: 10)
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 15).stroke(Color.black, lineWidth: 0.5)
                        })
            
                        Button(action: {}) {
                            Image(systemName: "slider.horizontal.3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color.black)
                                .frame(width: 30, height: 30, alignment: .center)
                                
                        }
                        .padding(.leading, 15)
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.bottom, 10)
                                     
                    
//                    foods
                    FoodCardView()
//                    food list
                    FoodListView()
                   

                        
                }
            }
            .background(Color(.systemGray).opacity(0.1))
            
            
        }
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
