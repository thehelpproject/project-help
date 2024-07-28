//
//  HTextField.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 22/07/24.
//

import SwiftUI

struct HTextField: View {
    @State private var statex:String
    @State private var title:String
    init(@State _ title:String ,@State _ state: String ) {
        self.statex = state
        self.title = title
    }
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "network")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Spacer()
            TextField(title ,text:$statex)
            Image(systemName: "x.circle")
                .imageScale(.medium)
                .foregroundStyle(.tint)
                .onTapGesture {
                    statex = ""
                }
            Spacer()
        }.padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(Color.purple, lineWidth: 2))
        .cornerRadius(8)
        .shadow(radius: 12)
        .padding()
    }
}

#Preview {
    HTextField("Your Name","Rahul")
}
