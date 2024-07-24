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
                    statex = " "
                }
            Spacer()
            
        }.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        .border(.purple)
        .padding()
        .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    HTextField("Your Name","Rahul")
}
