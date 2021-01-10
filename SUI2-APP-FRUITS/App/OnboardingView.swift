//
//  OnboardingView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK:- properties
    var fruits:[Fruit] = fruitData
    //MARK:- Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
               
                FruitCardView(fruit:item)
            }
       
        }//: TabView
        
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK:- Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
