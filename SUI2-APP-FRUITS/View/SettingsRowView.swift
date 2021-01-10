//
//  SettingsRowView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/7/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MAEK:- Property
    var name:String
    var content:String? = nil
    
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                
                if (content != nil){
                Text(content ?? "")
                }
                else if (linkLabel != nil && linkDestination != nil){
                    Link(destination: URL(string: "https://\(linkDestination ?? "")")!, label: {
                        Group {
                            Text(linkLabel ?? "")
                            Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                        }
                    })
                }
                else{
                    EmptyView()
                }
            }
        }//:Vstack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "John / Jane" )
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "facebook", linkDestination: "facebook.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .preferredColorScheme(.dark)
                .padding()
        }
    }
}
