//
//  FruitDetailView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    // Mark:- Properties
    var fruit:Fruit
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    VStack (spacing:10){
                        FruitHeader(fruit: fruit)
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                            .padding(.horizontal, 10)
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        //NUTRIENT
                        FruitNutrientView(fruit: fruit)
                            .padding(.horizontal,10)
                        //SUBHEADING
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                            .padding(.horizontal, 10)
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        
                        // link
                        SourceLinkView()
                            .padding(.horizontal, 10)
                        
                    }//:VSTACH
                    
                    
                    
                    .frame(maxWidth:640, alignment: .center)
                }//:VSTACK
                
            }//:SCROWVIEW
            .navigationBarTitle(fruit.title, displayMode:.inline)
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)

       }//NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
