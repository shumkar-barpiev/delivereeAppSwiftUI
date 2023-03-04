//
//  FoodListView.swift
//  Deliveree
//
//  Created by Shumkar on 4/3/23.
//

import SwiftUI


let foodLists: [FoodModel] = [
    .init(id: 1, foodName: "Paul", description: "French Pasta", deliveryStatus: "FREE", stars: 4.5, price: 8.0, deliveryTime: "25 Mins", foodImageName: "food3"),
    .init(id: 2, foodName: "Roma’s", description: "Steaks, Burgers", deliveryStatus: "FREE", stars: 2.5, price: 13.0, deliveryTime: "55 Mins", foodImageName: "food2")
    
]


struct FoodListView: View {
    var body: some View {
        VStack{
            ForEach(foodLists){food in
                HStack{
                    VStack(alignment: .leading, spacing: 5 ){
                        Text("\(food.foodName) ")
                            .font(.system(size: 18))
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
                                .frame(width: 14)
                            Text(String(format: "%.1f", food.stars))
                                .font(.custom(
                                        "Poppins",
                                        fixedSize: 14))
                                .bold()

                            Image(systemName: "clock")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14)
                            Text("\(food.deliveryTime)")
                                .font(.custom(
                                        "Poppins",
                                        fixedSize: 14))
                                .bold()
                        }
                        .frame(width: 150, height: 30, alignment: .bottomTrailing)
                        .padding(.horizontal, 10)
                        .padding(.leading, 60)
                        
                    }
                    
                    Image("\(food.foodImageName)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(25)
            }
        }.padding(.bottom, 85)
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
