//
//  StartButtonView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - Property
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    //MARK:- Button
    var body: some View {
        
        
    
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    
                  
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })//: Button
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
