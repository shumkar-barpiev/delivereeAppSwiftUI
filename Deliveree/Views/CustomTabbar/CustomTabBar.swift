 //
//  CustomTabBar.swift
//  Deliveree
//
//  Created by Shumkar on 2/3/23.
//

import SwiftUI

enum  Tab: String, CaseIterable{
    case VectorHome
    case VectorWallet
    case VectorText
    case VectorPerson
    
    
}

struct CustomTabBar: View {
    @Binding  var selectedTab: Tab
    private var fillImage:  String{
        selectedTab.rawValue
    }
    
    
    
    
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue){ tab in
                    Spacer()
                    Image("\(tab)")
                        .scaleEffect(selectedTab == tab ? 1.35: 1.0)
                        .font(.system(size: 20))
                        .padding(13)
                        .mask(Circle())
                        .background(selectedTab == tab ? Color(.systemGray).opacity(0.5): Color.clear)
                        .cornerRadius(23)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                    
                }
            }
            .frame(width: nil, height: 75)
            .background(Color.black)
            .cornerRadius(30)
            .padding(.leading,18)
            .padding(.trailing, 18)
            .shadow(color: .gray.opacity(0.8), radius: 8, x: 0, y: 15)
            
            
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.VectorHome))
    }
}
