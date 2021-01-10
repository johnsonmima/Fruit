//
//  FruitNutrientView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct FruitNutrientView: View {
    //MARK:- Property
    var fruit:Fruit
    let nutrient:[String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK:- Body
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0 ..< nutrient.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .font(Font.system(.body).bold())
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//GroupBox
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
