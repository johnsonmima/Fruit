//
//  FruitHeader.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct FruitHeader: View {
    // MARK:- Properties
    @State private var isAnimatingImage:Bool = false
    var fruit:Fruit
    //MARK:- BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.6), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.5)
                .padding(.vertical, 20)
        }//ZSTACK
        
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
               isAnimatingImage = true
                
            }// withAnimation
            
        }
        .frame(height:440)
    }
}

struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
