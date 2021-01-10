//
//  SourceLinkView.swift
//  SUI2-APP-FRUITS
//
//  Created by Johnson Olusegun on 1/6/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Content source")
                Spacer()
                Group{
                Link("Wikipidia", destination:URL(string: "https://wikipidia.com.com")!)
                Image(systemName: "arrow.up.right.square")
                }
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
