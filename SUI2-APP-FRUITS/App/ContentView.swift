//
//  ContentView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    var fruits:[Fruit] = fruitData
    @State private var isShowingSettings:Bool = false
    
    
    
    
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical,1)
                                
                        })
                    
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                      isShowingSettings = true
                                    }, label: {
                                        Group{
                                            Image(systemName: "slider.horizontal.3")
                                                .imageScale(.large)
                                                
                                               
                                        }
                                        
                                    })// end of button
                                    .sheet(isPresented: $isShowingSettings, content: {
                                        SettingsView()
                                    })
                                
            )
            
            .navigationViewStyle(StackNavigationViewStyle())
            //.navigationTitle("Fruits")
        }//:NAVIGATION
            
    }//:BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
