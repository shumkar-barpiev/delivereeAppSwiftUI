//
//  FoodCardView.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import SwiftUI


let foods: [FoodModel] = [
    .init(id: 1, foodName: "Tony Roma’s", description: "Ribs & Steaks", deliveryStatus: "FREE", stars: 4.5, price: 10.0, deliveryTime: "35 Mins", foodImageName: "food1"),
    .init(id: 2, foodName: "Momos", description: "Japanese", deliveryStatus: "FREE", stars: 3.5, price: 20.0, deliveryTime: "30 Mins", foodImageName: "food2"),
    .init(id: 3, foodName: "Roast Chicken", description: "English Food", deliveryStatus: "FREE", stars: 5.0, price: 25.0, deliveryTime: "17 Mins", foodImageName: "food4")
    
]


struct FoodCardView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10) {
                ForEach(foods){food in
                    
                    VStack(alignment: .leading){
                        Image("\(food.foodImageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width / 2.5)
                            .cornerRadius(150)
                            .padding(.bottom, -15)
                        Text("\(food.foodName) ")
                            .font(.system(size: 16))
                            .font(.title)
                            .foregroundColor(Color.black)
                            .bold()
                            .font(.custom(
                                    "Poppins",
                                    fixedSize: 13))
                            .padding(.bottom, 1)
                        Text("\(food.description)")
                            .font(.custom(
                                    "Poppins",
                                    fixedSize: 13))
                            .foregroundColor(Color(.systemGray))
                        
                       
                        Text( String(format: "Delivery: \(food.deliveryStatus) Minimum: $%.1f", food.price))
                            .foregroundColor(Color(.systemGray))
                            .font(.custom(
                                    "Poppins",
                                    fixedSize: 13))
                            
                        HStack{
                            Image(systemName: "star.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15)
                            Text(String(format: "%.1f", food.stars))
                                .font(.custom(
                                        "Poppins",
                                        fixedSize: 13))
                                .bold()

                            Image(systemName: "clock")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15)
                            Text("\(food.deliveryTime)")
                                .font(.custom(
                                        "Poppins",
                                        fixedSize: 13))
                                .bold()
                        }
                        .frame(width: 140, height: 15, alignment: .center)
                        .padding(.horizontal, 10)
                            
                    }
                    .padding(15)
                    .background(Color.white)
                    .cornerRadius(25)
                }
            }
            .padding(3)
            .padding(.leading, 10)
        }
    }
}

struct FoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCardView()
    }
}
