//
//  SettingsLabelView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/7/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK:- properties
    var labelText:String
    var labelImage:String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
