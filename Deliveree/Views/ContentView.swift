//
//  ContentView.swift
//  Deliveree
//
//  Created by Shumkar on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .VectorHome
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue){ tab in
                        HStack{
                            switch tab.rawValue{
                                case "VectorHome":
                                    HomeView()
                                    
                                case "VectorWallet":
                                    WalletView()
                                
                                case "VectorText":
                                    MessageView()
                                    
                                default:
                                    ProfileView()
                            }
                        }
                         .tag(tab)
                    }
                }
            }
            
            VStack{
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
        .accentColor(Color.black)
        .background(Color.pink)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
