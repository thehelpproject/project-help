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
    @State private var startImage:String = "network"
    @State private var endImage:String = "x.circle"
    @State private var EMPTY_STRING:String = ""
    @State private var lineWidth:CGFloat = 2
    @State private var trailingInset:CGFloat = 0
    @State private var leadingInset:CGFloat = 0
    @State private var bottomInset:CGFloat  = 4
    @State private var topInset:CGFloat = 4
    @State private var shadowRadius:CGFloat = 12
    @State private var cornerRadius:CGFloat = 8
    

    init(@State _ title:String ,@State _ state: String ) {
        self.statex = state
        self.title = title
    }
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: startImage)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Spacer()
            TextField(title ,text:$statex)
            Image(systemName: endImage)
                .imageScale(.medium)
                .foregroundStyle(.tint)
                .onTapGesture {
                    statex = EMPTY_STRING
                }
            Spacer()
        }.padding(EdgeInsets(top: topInset, leading: leadingInset, bottom: bottomInset, trailing: trailingInset))
        .overlay(RoundedRectangle(cornerRadius: cornerRadius)
            .stroke(Color.purple, lineWidth: lineWidth))
        .cornerRadius(cornerRadius)
        .shadow(radius: shadowRadius)
        .padding()
    }
}

#Preview {
    HTextField("Your Name","Rahul")
}
