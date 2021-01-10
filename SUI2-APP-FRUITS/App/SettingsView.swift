//
//  SettingsView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Property
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    //MARK:- Body
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false ){
                VStack(spacing:20) {
                    //MARK:- Section One
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                           ){
                        
                        
                        Divider().padding(.vertical,4)
                        HStack(alignment:.center, spacing:10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruit are naturallt low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }// Hstack
                        
                    }
                    
                    //MARK:- Section Two
                    
                    GroupBox(label:   SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. that way it start the onoarding process and you will see the welcome screen again. ")
                            .padding(.vertical, 8)
                            .font(.footnote)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding{
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                            }
                            else{
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                        
                        
                    }
                    
                    
                    
                    //MARK:- Section Three
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content:"Robert petras")
                        SettingsRowView(name: "Compatability", content:"iOS 14")
                        SettingsRowView(name: "Website",  linkLabel: "Bethel", linkDestination: "Bethel.edu")
                        SettingsRowView(name: "Website",  linkLabel: "Facebook", linkDestination: "facebook.com.edu")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content:"1.1.0")
                       
                        
                        
                    }
                   
                    
                }// Vstack
            }// End of scroll view
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Group{
                                            Image(systemName: "xmark")
                                        }
                                    })
            )// trailing bar item
            .padding()
            //.navigationTitle("Title")
        }// NAVIGATION
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
