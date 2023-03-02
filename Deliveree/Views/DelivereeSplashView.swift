//
//  DelivereeSplashView.swift
//  Deliveree
//
//  Created by Shumkar on 2/3/23.
//

import SwiftUI

struct DelivereeSplashView: View {
    @State private var  isActive = false
    
    var body: some View {
        
        if isActive{
            ContentView()
        }else{
            ZStack{
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(1)
                SplashMainContent()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+1.8) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashMainContent: View{
    @State private var size = 0.7
    @State private var opacity = 0.5
    var body: some View{
        VStack{
            HStack{
                Image("icon1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48.0, height: 48.0)
                    
                Text("DELIVEREE")
                    .font(.system(size: 48, weight: .heavy, design: .default))
                    .foregroundColor(Color.white)
            }.padding(.bottom, 18)
            Text("Your favorite local restaurants")
                .font(Font.custom("custome", size: 21, relativeTo: .body))
                .foregroundColor(Color.white)
    
            HStack{
                Text("delivered")
                    .font(.system(size: 21, weight: .heavy, design: .default))
                    .foregroundColor(Color.white)
                    
                Text("to your doorstep.")
                    .font(Font.custom("custome", size: 21, relativeTo: .body))
                    .foregroundColor(Color.white)
            }
        }
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 1.2), {
                self.size = 0.9
                self.opacity = 1.0
            })
        }
         
    }
}

struct DelivereeSplashView_Previews: PreviewProvider {
    static var previews: some View {
        DelivereeSplashView()
.previewInterfaceOrientation(.portrait)
    }
}
